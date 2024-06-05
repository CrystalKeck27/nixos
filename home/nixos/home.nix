{inputs, ...}: {
  home = {
    username = "nixos";
    homeDirectory = "/home/nixos";
    stateVersion = "23.05";
  };

  programs = {
    home-manager.enable = true;
  };

  imports = [
    ./apps
    ./tools
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
}
