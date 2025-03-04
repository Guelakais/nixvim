{ pkgs, ... }:
{
  plugins = {
    dap-virtual-text.enable = true;
    dap-ui.enable = true;
    dap = {
      enable = true;

      adapters = {
        executables = {
          lldb = {
            command = "${pkgs.lldb_19}/bin/lldb-dap";
          };
        };
      };
    };
  };
}
