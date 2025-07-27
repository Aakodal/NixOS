{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    libnotify
    imagemagick
    gcc
    cmake
    git
    fzf
    file
    zip
    unzip
    ripgrep
    gnugrep
    eza
    wget
    curl
    feh
    brightnessctl
    findutils
    pciutils
    android-tools
    dotnet-sdk
  ];
}
