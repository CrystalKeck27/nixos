{pkgs, ...}: {
  imports = [
    ./discord
    ./firefox
  ];

  home.packages = with pkgs; [

    # School
    teams-for-linux

    dunst
    obsidian
    xfce.thunar

    # Screenshot tools
    grim
    ffmpeg_6
    slurp
    wl-clipboard
    vlc

    # System
    polkit_gnome
    unzip
  ];
}