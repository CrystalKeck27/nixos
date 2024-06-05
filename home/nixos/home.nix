{inputs, ...}: {
  home = {
    username = "crystal";
    homeDirectory = "/home/crystal";
    stateVersion = "23.05";
  };

  programs = {
    home-manager.enable = true;
  };

  imports = [
    ./tools
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
}
