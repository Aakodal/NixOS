{
  pkgs,
  ...
}: {
  services.openssh = {
    enable = true;
    startWhenNeeded = true;

    openFirewall = true;
    ports = [30];
  };

  services.pcscd.enable = true;
  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-curses;
    enableSSHSupport = true;
  };

  environment.systemPackages = with pkgs; [
    gnupg
  ];
}
