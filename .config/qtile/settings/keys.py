# Qtile keybindings

from libqtile.config import Key
from libqtile.command import lazy


mod = "mod4"
alt = "mod1"

keys = [Key(key[0], key[1], *key[2:]) for key in [
    # ------------ Window Configs ------------

    # Switch between windows in current stack pane
    ([mod], "j", lazy.layout.down()),
    ([mod], "k", lazy.layout.up()),
    ([mod], "h", lazy.layout.left()),
    ([mod], "l", lazy.layout.right()),

    # Change window sizes (MonadTall)
    ([mod, "shift"], "l", lazy.layout.grow()),
    ([mod, "shift"], "h", lazy.layout.shrink()),

    # Toggle floating
    ([mod, "shift"], "f", lazy.window.toggle_floating()),

    # Move windows up or down in current stack
    ([mod, "shift"], "j", lazy.layout.shuffle_down()),
    ([mod, "shift"], "k", lazy.layout.shuffle_up()),

    # Toggle between different layouts as defined below
    ([mod], "Tab", lazy.next_layout()),
    ([mod, "shift"], "Tab", lazy.prev_layout()),

    # Kill window
    ([mod], "w", lazy.window.kill()),

    # Switch focus of monitors
    ([mod], "period", lazy.next_screen()),
    ([mod], "comma", lazy.prev_screen()),

    # Restart Qtile
    ([mod, "control"], "r", lazy.restart()),
    ([mod, "control"], "q", lazy.shutdown()),
    ([mod], "r", lazy.spawncmd()),

    # ------------ App Configs ------------

    # Menu
    ([mod], "m", lazy.spawn("rofi -show drun")),
    #Pavucontrol
    ([mod], "c", lazy.spawn("pavucontrol")),
    # Window Nav
    ([mod, "shift"], "m", lazy.spawn("rofi -show")),

    # Browser
    ([mod], "a", lazy.spawn("firefox")),

    # File Explorer
    ([mod], "z", lazy.spawn("pcmanfm")),

    # Terminal
([mod], "Return", lazy.spawn("alacritty")),

    # Redshift  (Luz nocturna)
    ([mod], "r", lazy.spawn("redshift -O 2400")),
    ([mod, "shift"], "r", lazy.spawn("redshift -x")),

    # Screenshot
    ([mod], "s", lazy.spawn("scrot")),
    ([mod, "shift"], "s", lazy.spawn("scrot -s")),

    # ------------ Hardware Configs ------------

    # Volume
    ([], "XF86AudioLowerVolume", lazy.spawn(
        "pamixer --decrease 5"
    )),
    ([], "XF86AudioRaiseVolume", lazy.spawn(
        "pamixer --increase 5"
    )),
    ([], "XF86AudioMute", lazy.spawn(
        "pamixer --toggle-mute"
    )),
    ([alt], "k", lazy.spawn(
        "playerctl --player=spotify play-pause"
    )),
    ([alt], "j", lazy.spawn(
        "playerctl --player=spotify previous"
    )),
    ([alt], "l", lazy.spawn(
        "playerctl --player=spotify next"
    )),
    # Brightness
    ([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%")),
    ([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-")),
]]
