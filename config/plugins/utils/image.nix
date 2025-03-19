{
  plugins.image = {
    enable = true;
    backend = "kitty";
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
