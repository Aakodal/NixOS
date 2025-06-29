{
  inputs,
  pkgs,
  ...
}: let
  nvf = inputs.nvf;
in {
  imports = [
    nvf.homeManagerModules.default
  ];

  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;
        globals.editorconfig = true;
        enableLuaLoader = true;
        preventJunkFiles = true;

        startPlugins = with pkgs.vimPlugins; [
          nvim-surround
        ];
        luaConfigRC.test = nvf.lib.nvim.dag.entryAnywhere ''
          require("nvim-surround").setup({})
        '';

        debugger.nvim-dap.ui.enable = true;

        languages = {
          enableFormat = true;
          enableTreesitter = true;
          enableExtraDiagnostics = true;

          nix.enable = true;
          html.enable = true;
          clang = {
            enable = true;
            lsp = {
              enable = true;
              server = "clangd";
            };
          };
          sql.enable = true;
          ts.enable = true;
          go.enable = true;
          zig.enable = true;
          python.enable = true;
          dart.enable = true;
          elixir.enable = true;
          svelte.enable = true;
          rust = {
            enable = true;
            crates.enable = true;
          };
        };

        statusline.lualine = {
          enable = true;
          theme = "onelight";
        };

        autopairs.nvim-autopairs.enable = true;
        autocomplete.nvim-cmp.enable = true;

        theme = {
          enable = true;
          name = "catppuccin";
          style = "latte";
          transparent = true;
        };

        filetree.nvimTree = {
          enable = true;
          openOnSetup = true;

          setupOpts = {
            sort.sorter = "name";
            renderer = {
              root_folder_label = false;
              icons.show.git = true;
            };
            view.width = 25;
          };
        };

        tabline.nvimBufferline.enable = true;

        treesitter.context.enable = true;

        binds = {
          whichKey.enable = true;
          cheatsheet.enable = true;
        };

        telescope.enable = true;

        git = {
          enable = true;
          gitsigns.enable = true;
        };

        dashboard = {
          dashboard-nvim.enable = true;
          alpha.enable = true;
        };

        notify.nvim-notify.enable = true;

        projects.project-nvim = {
          enable = true;
          setupOpts = {
            manual_mode = false;
            detection_methods = ["lsp" "pattern"];
              setupOpts.patterns = [
              ".git"
              ".hg"
              "Makefile"
              "package.json"
              "flake.nix"
              "index.*"
              ".anchor"
            ];
          };
        };

        utility = {
          ccc.enable = true;
          icon-picker.enable = true;
          diffview-nvim.enable = true;
          motion = {
            hop.enable = true;
            leap.enable = true;
          };
        };

        notes = {
          mind-nvim.enable = true;
          todo-comments.enable = true;
        };

        ui = {
          noice.enable = true;
          colorizer.enable = true;
          modes-nvim.enable = false;
          smartcolumn = {
            enable = true;
            setupOpts.custom_colorcolumn = {
              markdown = "80";
              nix = "150";
              ruby = "110";
              java = "120";
              go = ["130"];
            };
          };
        };

        session.nvim-session-manager = {
          enable = true;
          setupOpts.autoload_mode = "Disabled"; # misbehaves with dashboard
        };

        comments.comment-nvim.enable = true;
      };
    };
  };
}
