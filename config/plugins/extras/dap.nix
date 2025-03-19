{pkgs, ...}: {
  plugins = {
    dap-virtual-text.enable = true;
    dap-ui.enable = true;
    dap = {
      enable = true;
      signs = {
        dapBreakpoint = {
          text = "●";
          texthl = "DapBreakpoint";
        };
        dapBreakpointCondition = {
          text = "●";
          texthl = "DapBreakpointCondition";
        };
        dapLogPoint = {
          text = "◆";
          texthl = "DapLogPoint";
        };
      };

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
