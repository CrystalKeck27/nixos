{pkgs, ...}: {
  imports = [
    ./discord
    ./firefox
    ./vscode
  ];

  home.packages = with pkgs; [

    # School
    teams-for-linux
    rustup
    # probe-rs

    dunst
    krita
    obsidian
    xfce.thunar

    # Screenshot tools
    grim
    ffmpeg_6
    slurp
    vlc
    wl-clipboard

    # System
    polkit_gnome
    rofi-wayland
    tree
    unzip
  ];
}