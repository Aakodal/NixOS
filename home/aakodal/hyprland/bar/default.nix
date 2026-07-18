{
  inputs,
  assets,
  lib,
  pkgs,
  ...
}: let
  icons = {
    unknown = "tb-photo-question";

    clock = "tb-calendar-week";
    notifications = "tbf-bell";
    notifications-dnd = "tb-bell-off";
    notifications-unread = "tbf-bell-ringing";
    
    steam = "tbf-brand-steam";
    discord = "si-discord";
    udiskie = "tb-usb";
    vlc = "tbf-player-play";

    terminal = "tb-terminal";
    codium = "si-vscodium";
    clapper = "tbf-player-play";
    onlyoffice = "si-onlyoffice";
    fileroller = "tbf-folder-open";
    loupe = "tbf-photo";
  };

  iconsList = let
    prefixToSource = {
      tb = "tabler";
      tbf = "tabler-filled";
      si = "simple-icons";
      md = "material";
      ld = "lucide";
    };

    list = map (x:
      [
        (builtins.elemAt x 0)
        (builtins.concatStringsSep "-" (lib.sublist 1 (builtins.length x) x))
      ]
    ) (map (x: lib.flatten (builtins.split "-" x)) (lib.unique (builtins.attrValues icons)));
  in builtins.foldl' (acc: elem: let
    key = builtins.elemAt elem 0;
    value = builtins.elemAt elem 1;
    source = prefixToSource.${key};
  in acc // {
    ${source} = (acc.${source} or []) ++ [ value ];
  }) {} list;

  runs = lib.mapAttrsToList (key: value: "run ${pkgs.wayle}/bin/wayle icons install ${key} ${toString value}") iconsList;
in {
  services.wayle = {
    enable = true;
    settings = import ./config.nix { inherit assets lib icons; getIcon = x: (icons.${x} or icons.unknown) + "-symbolic"; };
  };

  home.activation = {
    installIcons = lib.hm.dag.entryAfter ["writeBoundary"] ''
      ${builtins.concatStringsSep "\n" runs}
    '';
  };

/*  programs.hyprpanel = {
    enable = true;
    systemd.enable = false;

    # hyprland.enable = false
    # already added in hyprland config

    settings = import ./config.nix { inherit assets; } // assets.colors.hyprpanel.theme;
  };*/
}
