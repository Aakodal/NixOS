{ base }: {
  systrayIcons = {
    steam = base.anthracite;
  };

  theme = {
    # Information for future organization (dear god there's so much colors in here):
    #
    # "card.color" is bg "inner" color, if that makes sense; i.e. when you open a menu, there are rectangles with different colors => they are "cards"
    # I think theme.bar.buttons.XXXX is for default color


    # Backgrounds
    ### Bar and bar buttons
    "theme.bar.background" = base.ghostWhite;
    "theme.bar.buttons.background" = base.ghostWhite;
    "theme.bar.buttons.battery.background" = base.ghostWhite;
    "theme.bar.buttons.battery.icon_background" = base.ghostWhite;
    "theme.bar.buttons.bluetooth.background" = base.ghostWhite;
    "theme.bar.buttons.bluetooth.icon_background" = base.ghostWhite;
    "theme.bar.buttons.clock.background" = base.ghostWhite;
    "theme.bar.buttons.clock.icon_background" = base.ghostWhite;
    "theme.bar.buttons.dashboard.background" = base.ghostWhite;
    "theme.bar.buttons.icon_background" = base.ghostWhite;
    "theme.bar.buttons.media.background" = base.ghostWhite;
    "theme.bar.buttons.media.icon_background" = base.ghostWhite;
    "theme.bar.buttons.modules.cava.background" = base.ghostWhite;
    "theme.bar.buttons.modules.cava.icon_background" = base.ghostWhite;
    "theme.bar.buttons.modules.cpu.background" = base.ghostWhite;
    "theme.bar.buttons.modules.cpu.icon_background" = base.ghostWhite;
    "theme.bar.buttons.modules.hypridle.background" = base.ghostWhite;
    "theme.bar.buttons.modules.hypridle.icon_background" = base.ghostWhite;
    "theme.bar.buttons.modules.hyprsunset.background" = base.ghostWhite;
    "theme.bar.buttons.modules.hyprsunset.icon_background" = base.ghostWhite;
    "theme.bar.buttons.modules.kbLayout.background" = base.ghostWhite;
    "theme.bar.buttons.modules.kbLayout.icon_background" = base.ghostWhite;
    "theme.bar.buttons.modules.microphone.background" = base.ghostWhite;
    "theme.bar.buttons.modules.microphone.icon_background" = base.ghostWhite;
    "theme.bar.buttons.modules.netstat.background" = base.ghostWhite;
    "theme.bar.buttons.modules.netstat.icon_background" = base.ghostWhite;
    "theme.bar.buttons.modules.power.background" = base.ghostWhite;
    "theme.bar.buttons.modules.power.icon_background" = base.ghostWhite;
    "theme.bar.buttons.modules.ram.background" = base.ghostWhite;
    "theme.bar.buttons.modules.ram.icon_background" = base.ghostWhite;
    "theme.bar.buttons.modules.storage.background" = base.ghostWhite;
    "theme.bar.buttons.modules.storage.icon_background" = base.ghostWhite;
    "theme.bar.buttons.modules.submap.background" = base.ghostWhite;
    "theme.bar.buttons.modules.submap.icon_background" = base.ghostWhite;
    "theme.bar.buttons.modules.updates.background" = base.ghostWhite;
    "theme.bar.buttons.modules.updates.icon_background" = base.ghostWhite;
    "theme.bar.buttons.modules.weather.background" = base.ghostWhite;
    "theme.bar.buttons.modules.weather.icon_background" = base.ghostWhite;
    "theme.bar.buttons.modules.worldclock.background" = base.ghostWhite;
    "theme.bar.buttons.modules.worldclock.icon_background" = base.ghostWhite;
    "theme.bar.buttons.network.background" = base.ghostWhite;
    "theme.bar.buttons.network.icon_background" = base.ghostWhite;
    "theme.bar.buttons.notifications.background" = base.ghostWhite;
    "theme.bar.buttons.notifications.icon_background" = base.ghostWhite;
    "theme.bar.buttons.systray.background" = base.ghostWhite;
    "theme.bar.buttons.volume.background" = base.ghostWhite;
    "theme.bar.buttons.volume.icon_background" = base.ghostWhite;
    "theme.bar.buttons.windowtitle.background" = base.ghostWhite;
    "theme.bar.buttons.windowtitle.icon_background" = base.ghostWhite;
    "theme.bar.buttons.workspaces.background" = base.ghostWhite;

    ### Menus and cards
    "theme.bar.menus.background" = base.ghostWhite;
    "theme.bar.menus.cards" = base.white;
    "theme.bar.menus.check_radio_button.background" = base.ghostWhite;
    "theme.bar.menus.dropdownmenu.background" = base.ghostWhite;
    "theme.bar.menus.menu.battery.background.color" = base.ghostWhite;
    "theme.bar.menus.menu.battery.card.color" = base.white;
    "theme.bar.menus.menu.bluetooth.background.color" = base.ghostWhite;
    "theme.bar.menus.menu.bluetooth.card.color" = base.white;
    "theme.bar.menus.menu.clock.background.color" = base.ghostWhite;
    "theme.bar.menus.menu.clock.card.color" = base.white;
    "theme.bar.menus.menu.dashboard.background.color" = base.ghostWhite;
    "theme.bar.menus.menu.dashboard.card.color" = base.white;
    "theme.bar.menus.menu.dashboard.powermenu.confirmation.background" = base.ghostWhite;
    "theme.bar.menus.menu.dashboard.powermenu.confirmation.card" = base.white;
    "theme.bar.menus.menu.media.background.color" = base.ghostWhite;
    "theme.bar.menus.menu.media.buttons.background" = base.ghostWhite;
    "theme.bar.menus.menu.media.card.color" = base.white;
    "theme.bar.menus.menu.network.background.color" = base.ghostWhite;
    "theme.bar.menus.menu.network.card.color" = base.white;
    "theme.bar.menus.menu.notifications.background" = base.ghostWhite;
    "theme.bar.menus.menu.notifications.card" = base.white;
    "theme.bar.menus.menu.notifications.pager.background" = base.ghostWhite;
    "theme.bar.menus.menu.power.background.color" = base.ghostWhite;
    "theme.bar.menus.menu.power.buttons.logout.background" = base.ghostWhite;
    "theme.bar.menus.menu.power.buttons.logout.icon_background" = base.ghostWhite;
    "theme.bar.menus.menu.power.buttons.restart.background" = base.ghostWhite;
    "theme.bar.menus.menu.power.buttons.restart.icon_background" = base.ghostWhite;
    "theme.bar.menus.menu.power.buttons.shutdown.background" = base.ghostWhite;
    "theme.bar.menus.menu.power.buttons.shutdown.icon_background" = base.ghostWhite;
    "theme.bar.menus.menu.power.buttons.sleep.background" = base.ghostWhite;
    "theme.bar.menus.menu.power.buttons.sleep.icon_background" = base.ghostWhite;
    "theme.bar.menus.menu.systray.dropdownmenu.background" = base.ghostWhite;
    "theme.bar.menus.menu.volume.background.color" = base.ghostWhite;
    "theme.bar.menus.menu.volume.card.color" = base.white;
    "theme.bar.menus.popover.background" = base.ghostWhite;
    "theme.bar.menus.progressbar.background" = base.ghostWhite;
    "theme.bar.menus.tooltip.background" = base.ghostWhite;
    "theme.notification.actions.background" = base.ghostWhite;
    "theme.notification.background" = base.ghostWhite;
    "theme.notification.close_button.background" = base.ghostWhite;

    ### Sliders and disabled switches
    "theme.bar.menus.menu.battery.slider.background" = base.brightBlack;
    "theme.bar.menus.menu.battery.slider.backgroundhover" = base.gainsboro;
    "theme.bar.menus.menu.bluetooth.switch.disabled" = base.brightBlack;
    "theme.bar.menus.menu.dashboard.monitors.bar_background" = base.brightBlack;
    "theme.bar.menus.menu.media.slider.background" = base.brightBlack;
    "theme.bar.menus.menu.media.slider.backgroundhover" = base.gainsboro;
    "theme.bar.menus.menu.network.switch.disabled" = base.brightBlack;
    "theme.bar.menus.menu.notifications.switch.disabled" = base.brightBlack;
    "theme.bar.menus.menu.volume.audio_slider.background" = base.brightBlack;
    "theme.bar.menus.menu.volume.audio_slider.backgroundhover" = base.gainsboro;
    "theme.bar.menus.menu.volume.input_slider.background" = base.brightBlack;
    "theme.bar.menus.menu.volume.input_slider.backgroundhover" = base.gainsboro;
    "theme.bar.menus.slider.background" = base.brightBlack;
    "theme.bar.menus.slider.backgroundhover" = base.gainsboro;
    "theme.bar.menus.switch.disabled" = base.brightBlack;

    ### Pucks
    "theme.bar.menus.menu.notifications.switch.puck" = base.anthracite;
    "theme.bar.menus.menu.battery.slider.puck" = base.anthracite;
    "theme.bar.menus.menu.bluetooth.switch.puck" = base.anthracite;
    "theme.bar.menus.menu.volume.input_slider.puck" = base.anthracite;
    "theme.bar.menus.menu.volume.audio_slider.puck" = base.anthracite;
    "theme.bar.menus.menu.media.slider.puck" = base.anthracite;
    "theme.bar.menus.slider.puck" = base.anthracite;
    "theme.bar.menus.switch.puck" = base.anthracite;
    "theme.bar.menus.menu.network.switch.puck" = base.anthracite;


    # Module-specific colors
    ### Dashboard
    "theme.bar.buttons.dashboard.icon" = base.blue;
    "theme.bar.menus.menu.dashboard.border.color" = base.black;
    "theme.bar.menus.menu.dashboard.controls.bluetooth.background" = base.sky;
    "theme.bar.menus.menu.dashboard.controls.bluetooth.text" = base.black;
    "theme.bar.menus.menu.dashboard.controls.disabled" = base.brightBlack;
    "theme.bar.menus.menu.dashboard.controls.input.background" = base.grannySmith;
    "theme.bar.menus.menu.dashboard.controls.input.text" = base.black;
    "theme.bar.menus.menu.dashboard.controls.notifications.background" = base.lavender;
    "theme.bar.menus.menu.dashboard.controls.notifications.text" = base.black;
    "theme.bar.menus.menu.dashboard.controls.volume.background" = base.brightRed;
    "theme.bar.menus.menu.dashboard.controls.volume.text" = base.black;
    "theme.bar.menus.menu.dashboard.controls.wifi.background" = base.cyan;
    "theme.bar.menus.menu.dashboard.controls.wifi.text" = base.black;
    "theme.bar.menus.menu.dashboard.monitors.cpu.bar" = base.brightRed;
    "theme.bar.menus.menu.dashboard.monitors.cpu.icon" = base.brightRed;
    "theme.bar.menus.menu.dashboard.monitors.cpu.label" = base.brightRed;
    "theme.bar.menus.menu.dashboard.monitors.disk.bar" = base.yellow;
    "theme.bar.menus.menu.dashboard.monitors.disk.icon" = base.yellow;
    "theme.bar.menus.menu.dashboard.monitors.disk.label" = base.yellow;
    "theme.bar.menus.menu.dashboard.monitors.gpu.bar" = base.green;
    "theme.bar.menus.menu.dashboard.monitors.gpu.icon" = base.green;
    "theme.bar.menus.menu.dashboard.monitors.gpu.label" = base.green;
    "theme.bar.menus.menu.dashboard.monitors.ram.bar" = base.lavender;
    "theme.bar.menus.menu.dashboard.monitors.ram.icon" = base.lavender;
    "theme.bar.menus.menu.dashboard.monitors.ram.label" = base.lavender;
    "theme.bar.menus.menu.dashboard.powermenu.confirmation.body" = base.anthracite;
    "theme.bar.menus.menu.dashboard.powermenu.confirmation.button_text" = base.ghostWhite;
    "theme.bar.menus.menu.dashboard.powermenu.confirmation.confirm" = base.green;
    "theme.bar.menus.menu.dashboard.powermenu.confirmation.deny" = base.red;
    "theme.bar.menus.menu.dashboard.powermenu.confirmation.label" = base.blue;
    "theme.bar.menus.menu.dashboard.powermenu.logout" = base.green;
    "theme.bar.menus.menu.dashboard.powermenu.restart" = base.orange;
    "theme.bar.menus.menu.dashboard.powermenu.shutdown" = base.pink;
    "theme.bar.menus.menu.dashboard.powermenu.sleep" = base.lavender;
    "theme.bar.menus.menu.dashboard.profile.name" = base.red;
    "theme.bar.menus.menu.dashboard.shortcuts.background" = base.brightCyan;
    "theme.bar.menus.menu.dashboard.shortcuts.recording" = base.yellow;
    "theme.bar.menus.menu.dashboard.shortcuts.text" = base.black;

    ### Window title
    "theme.bar.buttons.windowtitle.icon" = base.green;
    "theme.bar.buttons.windowtitle.text" = base.green;

    ### Workspaces
    "theme.bar.buttons.workspaces.active" = base.red;
    "theme.bar.buttons.workspaces.occupied" = base.brightRed;
    "theme.bar.buttons.workspaces.available" = base.brightGreen;
    "theme.bar.buttons.workspaces.hover" = base.brightMagenta;
    "theme.bar.buttons.workspaces.numbered_active_highlighted_text_color" = base.yellow;
    "theme.bar.buttons.workspaces.numbered_active_underline_color" = base.black;
    "theme.bar.buttons.workspaces.border" = base.black;

    ### Volume
    "theme.bar.buttons.volume.icon" = base.brightRed;
    "theme.bar.buttons.volume.text" = base.brightRed;
    "theme.bar.menus.menu.volume.audio_slider.primary" = base.brightRed;
    "theme.bar.menus.menu.volume.iconbutton.active" = base.red;
    "theme.bar.menus.menu.volume.iconbutton.passive" = base.brightRed;
    "theme.bar.menus.menu.volume.icons.active" = base.red;
    "theme.bar.menus.menu.volume.icons.passive" = base.brightRed;
    "theme.bar.menus.menu.volume.input_slider.primary" = base.brightRed;
    "theme.bar.menus.menu.volume.label.color" = base.brightRed;
    "theme.bar.menus.menu.volume.listitems.active" = base.red;
    "theme.bar.menus.menu.volume.listitems.passive" = base.brightRed;
    "theme.bar.menus.menu.volume.text" = base.anthracite;

    ### Network
    "theme.bar.buttons.network.icon" = base.cyan;
    "theme.bar.buttons.network.text" = base.cyan;
    "theme.bar.menus.menu.network.iconbuttons.active" = base.cyan;
    "theme.bar.menus.menu.network.iconbuttons.passive" = base.brightCyan;
    "theme.bar.menus.menu.network.icons.active" = base.cyan;
    "theme.bar.menus.menu.network.icons.passive" = base.brightCyan;
    "theme.bar.menus.menu.network.label.color" = base.cyan;
    "theme.bar.menus.menu.network.listitems.active" = base.cyan;
    "theme.bar.menus.menu.network.listitems.passive" = base.brightCyan;
    "theme.bar.menus.menu.network.scroller.color" = base.cyan;
    "theme.bar.menus.menu.network.status.color" = base.cyan;
    "theme.bar.menus.menu.network.switch.enabled" = base.cyan;
    "theme.bar.menus.menu.network.text" = base.anthracite;

    ### Bluetooth
    "theme.bar.buttons.bluetooth.icon" = base.sky;
    "theme.bar.buttons.bluetooth.text" = base.sky;
    "theme.bar.menus.menu.bluetooth.iconbutton.active" = base.sky;
    "theme.bar.menus.menu.bluetooth.iconbutton.passive" = base.blue;
    "theme.bar.menus.menu.bluetooth.icons.active" = base.sky;
    "theme.bar.menus.menu.bluetooth.icons.passive" = base.blue;
    "theme.bar.menus.menu.bluetooth.label.color" = base.sky;
    "theme.bar.menus.menu.bluetooth.listitems.active" = base.sky;
    "theme.bar.menus.menu.bluetooth.listitems.passive" = base.blue;
    "theme.bar.menus.menu.bluetooth.scroller.color" = base.sky;
    "theme.bar.menus.menu.bluetooth.status" = base.sky;
    "theme.bar.menus.menu.bluetooth.switch.enabled" = base.sky;
    "theme.bar.menus.menu.bluetooth.text" = base.anthracite;

    ### Battery
    "theme.bar.buttons.battery.icon" = base.orange;
    "theme.bar.buttons.battery.text" = base.orange;
    "theme.bar.menus.menu.battery.icons.active" = base.orange;
    "theme.bar.menus.menu.battery.icons.passive" = base.brightYellow;
    "theme.bar.menus.menu.battery.label.color" = base.orange;
    "theme.bar.menus.menu.battery.listitems.active" = base.orange;
    "theme.bar.menus.menu.battery.listitems.passive" = base.brightYellow;
    "theme.bar.menus.menu.battery.slider.primary" = base.orange;
    "theme.bar.menus.menu.battery.text" = base.orange;

    ### Systray (coloring doesn't work for some reason)
    "theme.bar.menus.menu.systray.dropdownmenu.text" = base.anthracite;
    "theme.bar.menus.dropdownmenu.text" = base.anthracite;
    "theme.bar.buttons.systray.customIcon" = base.black;

    ### Clock & calendar
    "theme.bar.buttons.clock.icon" = base.magenta;
    "theme.bar.buttons.clock.text" = base.magenta;
    "theme.bar.menus.menu.clock.calendar.contextdays" = base.grannySmith; # wtf is this
    "theme.bar.menus.menu.clock.calendar.currentday" = base.red;
    "theme.bar.menus.menu.clock.calendar.days" = base.brightMagenta;
    "theme.bar.menus.menu.clock.calendar.paginator" = base.magenta;
    "theme.bar.menus.menu.clock.calendar.weekdays" = base.magenta;
    "theme.bar.menus.menu.clock.calendar.yearmonth" = base.brightBlue;
    "theme.bar.menus.menu.clock.text" = base.anthracite;
    "theme.bar.menus.menu.clock.time.time" = base.magenta;
    "theme.bar.menus.menu.clock.time.timeperiod" = base.magenta;

    ### Notifications
    "theme.bar.buttons.notifications.icon" = base.lavender;
    "theme.bar.buttons.notifications.total" = base.lavender;
    "theme.bar.menus.menu.notifications.clear" = base.brightRed;
    "theme.bar.menus.menu.notifications.label" = base.lavender;
    "theme.bar.menus.menu.notifications.no_notifications_label" = base.anthracite;
    "theme.bar.menus.menu.notifications.pager.button" = base.blue;
    "theme.bar.menus.menu.notifications.pager.label" = base.black;
    "theme.bar.menus.menu.notifications.scrollbar.color" = base.white;
    "theme.bar.menus.menu.notifications.switch.enabled" = base.lavender;
    "theme.notification.actions.text" = base.cyan;
    "theme.notification.close_button.label" = base.brightRed;
    "theme.notification.label" = base.magenta;
    "theme.notification.labelicon" = base.magenta;
    "theme.notification.text" = base.anthracite;
    "theme.notification.time" = base.blue;

    ### OSD
    "theme.osd.bar_color" = base.brightRed;
    "theme.osd.bar_container" = base.ghostWhite;
    "theme.osd.bar_empty_color" = base.brightBlack;
    "theme.osd.bar_overflow_color" = base.red;
    "theme.osd.icon" = base.black;
    "theme.osd.icon_container" = base.gainsboro;
    "theme.osd.label" = base.red;
  };
}
