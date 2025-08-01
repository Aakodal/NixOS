{
  assets,
  ...
}: {
  xdg.configFile."macchina/themes/Silicon.toml".text = ''
    # Silicium
    spacing         = 2
    padding         = 0
    hide_ascii      = true
    separator       = " "
    key_color       = "${assets.colors.macchina.key_color}"
    separator_color = "White"

    [palette]
    type = "Full"
    glyph = " ● "
    visible = true

    [bar]
    glyph           = "ߋ"
    symbol_open     = '['
    symbol_close    = ']'
    hide_delimiters = true
    visible         = false

    [box]
    border          = "rounded"
    visible         = true

    [box.inner_margin]
    x               = 1
    y               = 0

    [randomize]
    key_color       = false
    separator_color = false

    [keys]
    host            = "Host"
    kernel          = "Kernel"
    os              = "OS"
    de              = "DE"
    wm              = "WM"
    distro          = "Distro"
    terminal        = "Terminal"
    shell           = "Shell"
    packages        = "Packages"
    uptime          = "Uptime"
    memory          = "Memory"
    machine         = "Machine"
    resolution      = "Resolution"
    cpu             = "CPU"
  '';
}
