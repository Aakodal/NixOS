{
  pkgs,
  ...
}: {
  programs.vscodium = {
    enable = true;

    mutableExtensionsDir = true;

    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        ms-python.python
        ms-python.vscode-pylance
        ms-ceintl.vscode-language-pack-fr
        jnoortheen.nix-ide
        github.github-vscode-theme
      ];

      userSettings = {
        "window.title" = "\${dirty}\${rootName}\${separator}./\${activeEditorMedium}";
        "workbench.colorTheme" = "GitHub Light Default";
        "Lua.workspace.library" = [
          "/usr/share/hypr/stubs"
        ];
      };
    };
  };
}
