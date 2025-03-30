{
  plugins.image = {
    enable = true;
    settings = {
      backend = "kitty";
      hijack_file_patterns = [
        "*.png"
        "*.jpg"
        "*.jpeg"
        "*.gif"
        "*.webp"
      ];
      integrations = {
        css.enable = true;
        html.enable = true;
        markdown.enable = true;
        typst.enable = true;
      };
      max_height_window_percentage = 25;
    };
  };
}
