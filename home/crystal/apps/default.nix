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
    probe-rs
    quartus-prime-lite

    # Development
    octave
    rustup

    # Desktop
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