#!/usr/bin/env python3
"""Convert the GNOME Terminal palette in .terminal.dconf into a macOS
Terminal.app .terminal profile.

Terminal.app stores every colour as an NSKeyedArchiver-encoded NSColor rather
than a plain string, so the colours cannot be written by hand. This rebuilds
that archive for each entry and emits a profile that Terminal.app can import.

Usage:  ./gen_mac_terminal_theme.py [.terminal.dconf] [output.terminal]
"""

import plistlib
import re
import sys

# Terminal.app names the 16 ANSI slots individually; dconf keeps them in a list.
ANSI_KEYS = [
    "ANSIBlackColor", "ANSIRedColor", "ANSIGreenColor", "ANSIYellowColor",
    "ANSIBlueColor", "ANSIMagentaColor", "ANSICyanColor", "ANSIWhiteColor",
    "ANSIBrightBlackColor", "ANSIBrightRedColor", "ANSIBrightGreenColor",
    "ANSIBrightYellowColor", "ANSIBrightBlueColor", "ANSIBrightMagentaColor",
    "ANSIBrightCyanColor", "ANSIBrightWhiteColor",
]


def ns_color(rgb):
    """Archive an (r, g, b) 0-255 tuple the way NSColor does on disk."""
    # NSRGB is an ASCII, space separated, NUL terminated triple of 0..1 floats.
    body = " ".join("%.6g" % (c / 255.0) for c in rgb).encode() + b"\x00"
    archive = {
        "$version": 100000,
        "$archiver": "NSKeyedArchiver",
        "$top": {"root": plistlib.UID(1)},
        "$objects": [
            "$null",
            {
                "$class": plistlib.UID(2),
                "NSColorSpace": 1,  # NSCalibratedRGBColorSpace
                "NSRGB": body,
            },
            {"$classes": ["NSColor", "NSObject"], "$classname": "NSColor"},
        ],
    }
    return plistlib.dumps(archive, fmt=plistlib.FMT_BINARY)


def parse_rgb(text):
    r, g, b = re.match(r"rgb\((\d+),(\d+),(\d+)\)", text.strip()).groups()
    return int(r), int(g), int(b)


def parse_dconf(path):
    settings = {}
    for line in open(path):
        if "=" not in line or line.startswith("["):
            continue
        key, _, value = line.partition("=")
        settings[key.strip()] = value.strip().strip("'")
    return settings


def main():
    src = sys.argv[1] if len(sys.argv) > 1 else ".terminal.dconf"
    dst = sys.argv[2] if len(sys.argv) > 2 else "myTerminal.terminal"
    cfg = parse_dconf(src)

    palette = [parse_rgb(c) for c in re.findall(r"rgb\([^)]*\)", cfg["palette"])]
    if len(palette) != 16:
        sys.exit("expected 16 palette entries, got %d" % len(palette))

    profile = {
        "name": cfg.get("visible-name", "myTerminal"),
        "type": "Window Settings",
        "ProfileCurrentVersion": 2.0600000000000001,
        "BackgroundColor": ns_color(parse_rgb(cfg["background-color"])),
        "TextColor": ns_color(parse_rgb(cfg["foreground-color"])),
        "BoldTextColor": ns_color(parse_rgb(cfg["bold-color"])),
        "CursorColor": ns_color(parse_rgb(cfg["cursor-background-color"])),
        # dconf has no selection colour; a light wash of the cursor reads well.
        "SelectionColor": ns_color((85, 85, 85)),
        "useOptionAsMetaKey": True,
        "ShouldLimitScrollback": 0,
        "ScrollbackLines": 100000,
        "Bell": bool(cfg.get("audible-bell") == "true"),
        "VisualBell": False,
    }
    for key, rgb in zip(ANSI_KEYS, palette):
        profile[key] = ns_color(rgb)

    with open(dst, "wb") as fh:
        plistlib.dump(profile, fh, fmt=plistlib.FMT_XML)
    print("wrote %s (%s)" % (dst, profile["name"]))


if __name__ == "__main__":
    main()
