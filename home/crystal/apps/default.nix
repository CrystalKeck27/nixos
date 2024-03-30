{pkgs, ...}: {
  imports = [
    ./discord
    ./firefox
    ./vscode
  ];

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [

    # School
    gcc-arm-embedded
    gnumake
    teams-for-linux
    probe-rs
    quartus-prime-lite

    # Development
    octave
    rustup
    nil # Nix Language server

    # Desktop
    dunst
    element-desktop
    gnome.seahorse
    gtk4
    krita
    obsidian
    xfce.thunar
    (nerdfonts.override { fonts = [ "VictorMono" "JetBrainsMono" ]; })

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