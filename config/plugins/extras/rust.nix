{ pkgs, ... }:
{
  plugins = {
    conform-nvim.settings.formatters_by_ft.rust = [ "rustfmt" ];
    crates-nvim = {
      enable = true;
      extraOptions = {
        completion = {
          crates = {
            enabled = true;
          };
        };
        lsp = {
          enabled = true;
          actions = true;
          completion = true;
          hover = true;
        };
      };
    };

    rustaceanvim = {
      enable = true;
      settings = {
        dap.adapter = {
          command = "${pkgs.lldb_19}/bin/lldb-dap";
          type = "executable";
        };
        tools.enable_clippy = true;
        server = {
          default_settings = {
            inlayHints = {
              lifetimeElisionHints = {
                enable = "always";
              };
            };
            rust-analyzer = {
              cargo = {
                allFeatures = true;
              };
              check = {
                command = "clippy";
              };
            };
          };
        };
      };
    };

  };
}
