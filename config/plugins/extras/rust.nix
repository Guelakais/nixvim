{ pkgs, ... }:
{
  plugins = {
    crates = {
      enable = true;
      settings = {
        autoupdate = true;
        smart_insert = true;
      };
    };
    bacon.enable = true;
    rustaceanvim = {
      enable = true;
      settings = {
        tools.enable_clippy = true;
        server = {
          dap.adapters.lldb = {
            type = "server";
            port = "${''$''}{port}";
            executable = {
              command = "codelldb";
              args = [
                "--port"
                "${''$''}{port}"
              ];
            };
          };
          default_settings = {
            inlayHints.lifetimeElisionHints.enable = "always";
            rust-analyzer = {
              cargo.allFeatures = true;
              check.command = "clippy";
              files.excludeDirs = [
                "target"
                ".git"
                ".cargo"
                ".github"
                ".direnv"
              ];
            };
          };
        };
      };
    };
  };
}
