{
  plugins.crates-nvim = {
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
}
