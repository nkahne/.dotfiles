#!/usr/bin/env bash
# ---------------------------------------------------------
# Wrapper für "thunar" als root unter Wayland (Hyprland)
# ---------------------------------------------------------

# Falls du ein bestimmtes Verzeichnis übergeben willst,
# wird das erste Argument ($1) benutzt, sonst das aktuelle.
TARGET="${1:-$PWD}"

# Starte Thunar über pkexec und übergebe die nötigen Variablen.
pkexec env \
    WAYLAND_DISPLAY="$WAYLAND_DISPLAY" \
    XDG_RUNTIME_DIR="$XDG_RUNTIME_DIR" \
    DBUS_SESSION_BUS_ADDRESS="$DBUS_SESSION_BUS_ADDRESS" \
    thunar "$TARGET"
