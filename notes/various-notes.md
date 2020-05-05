### Standard Notes (Theme Config)

org.standardnotes.theme-focus
/home/bhavik/.config/Standard Notes/Extensions/org.standardnotes.theme-focus
replace **a464c2** with **313131**

### GTK3 Themes

headerbar.default-decoration to change titlebar
3b3b3b to 1e1e1e
373737 to 222222

updated: 222222 to 1a1a1a

css id/class/groups
popup-menu (to change colors of dropdown windows in gnome panel) (in gnome-shell.css)

### TO CHANGE LOCK SCREEN

cd into /usr/share/gnome-shell/theme
file ubuntu.css or pop.css
#lockDialogGroup {
background: #1a1a1a url(resource:///org/gnome/shell/theme/noise-texture.png);
background-repeat: repeat;
}

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

## restart machine