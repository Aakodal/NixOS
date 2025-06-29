{
  pkgs,
  ...
}: {
  fonts = {
    fontconfig = {
      enable = true;

      defaultFonts = {
        monospace = [
          "JetBrainsMono Nerd Font"
          "Noto Color Emoji"
        ];
        sansSerif = [ "Noto Sans" "Noto Color Emoji" ];
        serif = [ "Noto Serif" "Noto Color Emoji" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };

    fontDir = {
      enable = true;
      decompressFonts = true;
    };

    packages = with pkgs; [
      calibri
      corefonts
      dejavu_fonts
      lato
      material-icons
      material-symbols
      material-design-icons
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      powerline-fonts
      product-sans
      roboto
      nerd-fonts.jetbrains-mono
    ];

    # DON'T FORGET TO RECOPY .local/share/fonts OR SOME APPS WON'T INTEGRATE FONTS!
    # mkdir $HOME/.local/share/fonts && cp -L /run/current-system/sw/share/X11/fonts/* $HOME/.local/share/fonts/
  };
}
