{pkgs, ...}: {
  imports = [
    ./discord
    ./firefox
  ];

  home.packages = with pkgs; [

    # School
    teams-for-linux

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