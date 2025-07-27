{
  pkgs,
  ...
}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;

    mutableExtensionsDir = true;

    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        ms-python.vscode-pylance
        ms-ceintl.vscode-language-pack-fr
        jnoortheen.nix-ide
        github.github-vscode-theme
      ];

      userSettings = {
        "window.title" = "\${dirty}\${rootName}\${separator}./\${activeEditorMedium}";
        "workbench.colorTheme" = "GitHub Light Default";
      };
    };
  };
}
