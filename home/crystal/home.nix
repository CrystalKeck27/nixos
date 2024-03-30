{inputs, ...}: {
  home = {
    username = "crystal";
    homeDirectory = "/home/crystal";
    stateVersion = "23.05";
  };

  programs = {
    home-manager.enable = true;
  };

  programs.hyprlock = {
    enable = true;

    general = {
      disable_loading_bar = true;
      hide_cursor = false;
      no_fade_in = true;
    };
  };

  imports = [
    ./apps
    ./desktop
    ./tools
    inputs.hyprlock.homeManagerModules.default
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
}