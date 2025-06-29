{
  pkgs,
  ...
}: {
  xdg = {
    desktopEntries.nemo = {
      name = "Nemo";
      exec = "${pkgs.nemo-with-extensions}/bin/nemo";
    };

    mimeApps = {
      enable = true;

      defaultApplications = {
        "inode/directory" = "nemo.desktop";
        "application/x-gnome-saved-search" = [ "nemo.desktop" ];
      };
    };
  };

}
