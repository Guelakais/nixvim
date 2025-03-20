{
  plugins.image = {
    enable = true;
    backend = "ueberzug";
    hijackFilePatterns = [
      "*.png"
      "*.jpg"
      "*.jpeg"
      "*.gif"
      "*.webp"
    ];
    maxHeightWindowPercentage = 25;
    tmuxShowOnlyInActiveWindow = true;
    integrations = {
      markdown = {
        clearInInsertMode = true;
        enabled = true;
        downloadRemoteImages = true;
        filetypes = [
          "markdown"
          "vimwiki"
          "mdx"
        ];
      };
    };
  };
}
