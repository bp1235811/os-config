# Linux Manual Setup

## Gnome Extensions

- Dash to Dock
- Dash to Panel
- Remove Alt+Tab Delay v2
- User Themes
- Sound Input & Output Device Chooser
- Bluetooth quick connect
- gTile
- Caffeine
- Impatience
- Steal My Focus
- Toggle Night Light
- Night Light Slider

## Dconf settings

#### [center-new-windows](https://askubuntu.com/questions/142128/open-windows-in-center-of-screen)

in `deconf-editor` app open `/org/gnome/mutter/` and toggle on `center-new-windows`

## Typora

Image `Copy image to custom foler` : `.assets/${filename}.assets`

## set xfce terminal as default Terminal

`cd /usr/share/applications`
rm xfce-terminal-settings launcher
change name for xfce terminal launcher to Terminal
change name for gnome terminal launcher to GNOME-T

## gTile

**Resize Presets**

Preset resize 1: `3x1 0:0 0:0, 1:0 1:0, 2:0 2:0` `Ctrl + 1`

Preset resize 2: `4x1 0:0 0:0, 1:0 2:0, 3:0 3:0` `Ctrl + 2`

Preset resize 3: `2x1 0:0 0:0, 1:0 1:0` `Ctrl + 3`

Preset resize 4: `3x1 0:0 0:0, 1:0 2:0` `Ctrl + 4`

Preset reize 5: `1x1 0:0 0:0` `Ctrl + 5`

## ulauncher

edit `/usr/share/applications/ulauncher.desktop`

update Exec to `Exec=env WEBKIT_DISABLE_COMPOSITING_MODE=1 GDK_BACKEND=x11 /usr/bin/ulauncher --hide-window`

## Misc.

### Give Virtual Box Users access to USB

sudo adduser \$USERNAME vboxusers

### GTK3 Themes

headerbar.default-decoration to change titlebar

```
3b3b3b to 1e1e1e
373737 to 222222
updated: 222222 to 1a1a1a
```

navbar to change menubar

css id/class/groups
popup-menu (to change colors of dropdown windows in gnome panel) (in gnome-shell.css)

#### Menu Bar

```
menubar,
.menubar {
  -GtkWidget-window-dragging: true;
  padding: 0px;
  background-color: #242424;
  background-image: none;
  color: rgba(225, 219, 219, 0.8);
  box-shadow: inset 0 -1px rgba(255, 255, 255, 0.12);
}
```

### TO CHANGE LOCK SCREEN

cd into /usr/share/gnome-shell/theme
file ubuntu.css or pop.css

#lockDialogGroup {
background: #1a1a1a url(resource:///org/gnome/shell/theme/noise-texture.png);
background-repeat: repeat;
}

```

### Change DNS lookup on ubuntu

sudo nano /etc/resolv.conf

remove existing

```

nameserver x.x.x.x

```

replace with your dns primary and secondary

```

nameserver x.x.x.x
nameserver x.x.x.x

```

restart machine

### Change Wifi Power savings

cd /etc/NetworkManager/conf.d/
nano default-wifi-powersave-on.conf

change value for wifi.powersave = x

```

0 (use default), 1 (ignore/don't touch), 2 (disable) or 3 (enable).
wifi.powersave = 2

```

Change wifi.powersave to 2 to disable it

Highlight Color: #545454

### Flameshot Shortcuts

- Entire Screensshot

  - Shift + Ctrl + 3
  - `flameshot full -p /home/bhavik/Pictures/Screenshots`

- Portion of Screenshot

  - Shift + Ctrl + 4
  - `flameshot gui -p /home/bhavik/Pictures/Screenshots`

### Watch settings change commands

`dconf watch /`
```
