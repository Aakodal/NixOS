{
  assets,
  pkgs,
  ...
}: {
  programs.alacritty = {
    enable = true;
    settings = {
      cursor.style.shape = "Beam";
      window = {
        dimensions = {
          columns = 95;
          lines = 25;
        };
        opacity = 0.85;
      };
      terminal.shell = {
        program = "${pkgs.zsh}/bin/zsh";
        args = [
          "-is" "eval" "clear && macchina"
        ];
      };

      font.normal = {
        family = "JetBrainsMono Nerd Font";
        style = "Regular";
      };

      colors = assets.colors.alacritty;
    };
  };
}
