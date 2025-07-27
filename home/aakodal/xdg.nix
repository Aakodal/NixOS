{
  config,
  ...
}: {
  xdg = {
    enable = true;
    mime.enable = true;
    mimeApps = {
      enable = true;

      associations.added = {
        "text/html" = "zen-beta.desktop";
        "image/svg+xml" = "zen-beta.desktop";
      };

      defaultApplications = {
        # Browser
        "x-scheme-handler/http" = "zen-beta.desktop";
        "x-scheme-handler/https" = "zen-beta.desktop";
        "x-scheme-handler/chrome" = "zen-beta.desktop";
        "application/pdf" = "zen-beta.desktop";

        # File explorer
        "inode/directory" = "nemo.desktop";
        "application/x-gnome-saved-search" = "nemo.desktop";

        # Image viewer
        "image/avif" = "org.gnome.Loupe.desktop";
        "image/bmp" = "org.gnome.Loupe.desktop";
        "image/gif" = "org.gnome.Loupe.desktop";
        "image/jpeg" = "org.gnome.Loupe.desktop";
        "image/png" = "org.gnome.Loupe.desktop";
        "image/svg+xml" = "org.gnome.Loupe.desktop";
        "image/tiff" = "org.gnome.Loupe.desktop";
        "image/webp" = "org.gnome.Loupe.desktop";

        # Text & code (Codium)
        "application/javascript" = "codium.desktop";
        "application/json" = "codium.desktop";
        "application/x-extension-htm" = "codium.desktop";
        "application/x-extension-html" = "codium.desktop";
        "application/x-extension-shtml" = "codium.desktop";
        "application/xhtml+xml" = "codium.desktop";
        "application/x-extension-xhtml" = "codium.desktop";
        "application/x-extension-xht" = "codium.desktop";
        "text/css" = "codium.desktop";
        "text/html" = "codium.desktop";
        "text/javascript" = "codium.desktop";
        "text/markdown" = "codium.desktop";
        "text/plain" = "codium.desktop"; # Little guy here carrying the whole dev files mime type
        "text/richtext" = "codium.desktop";
        "text/xml" = "codium.desktop";
      };
    };

    userDirs = {
      enable = true;
      createDirectories = true;

      desktop = "${config.home.homeDirectory}/Bureau";
      documents = "${config.home.homeDirectory}/Documents";
      download = "${config.home.homeDirectory}/Téléchargements";
      music = "${config.home.homeDirectory}/Musique";
      pictures = "${config.home.homeDirectory}/Images";
      videos = "${config.home.homeDirectory}/Vidéos";
    };
  };
}
