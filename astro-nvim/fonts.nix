{ pkgs, config, ... }:
{
  config.fonts = {
    packages = with pkgs; [
      (nerdfonts.override { fonts = [ config.astroNvim.nerdfont ]; })
      font-awesome
    ];
  };
}
