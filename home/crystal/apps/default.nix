{pkgs, ...}: {
  imports = [
    ./discord
    ./firefox
    ./vscode
  ];

  home.packages = with pkgs; [

    # School
    gnumake
    teams-for-linux
    rustup
    probe-rs

    dunst
    element-desktop
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