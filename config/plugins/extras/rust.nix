{ pkgs, ... }:
{
  plugins = {
    conform-nvim.settings.formatters_by_ft.rust = [ "rustfmt" ];
    crates = {
      enable = true;
      autoLoad = true;
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
          standalone = false;
          default_settings = {
            inlayHints = {
              lifetimeElisionHints = {
                enable = "always";
              };
            };
            rust-analyzer = {
              cargo = {
                allFeatures = false;
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
