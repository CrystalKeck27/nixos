{pkgs, ...}: {
  imports = [
  ];

  home.packages = with pkgs; [

    # School
    rustup
    surrealdb

    tree
    unzip
  ];
}