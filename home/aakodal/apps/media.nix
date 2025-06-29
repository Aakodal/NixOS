{
  pkgs,
  config,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    ffmpeg-full
    yt-dlp
    playerctl
    pavucontrol
    pulsemixer
    pamixer
    clapper
    gimp
    loupe
  ];
}
