{
  config,
  pkgs,
}: {
  fonts.packages = with pkgs.nerd-fonts; [
    _0xproto
    symbols-only
  ];
}
