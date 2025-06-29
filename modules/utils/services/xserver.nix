_: {
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "fr";
        options = "eurosign:e";
      };
    };

    # Touchpad support
    libinput.enable = true;
  };
}
