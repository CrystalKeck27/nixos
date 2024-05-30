{ pkgs, ... }: {
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
    xournalpp
    xournal
    pkgsCross.avr.buildPackages.gcc
    avrdude
    ravedude

    # Development
    octave
    rustup
    nil # Nix Language server
    nixpkgs-fmt
    sass
    bun
    typescript

    # Desktop
    dunst
    element-desktop
    gnome.seahorse
    gtk4
    krita
    obsidian
    pamixer
    polkit_gnome
    rofi-wayland
    xfce.thunar
    (nerdfonts.override { fonts = [ "VictorMono" "JetBrainsMono" ]; })
    brightnessctl
    wlsunset

    surrealist
    plex-media-player
    plexamp

    # Screenshot tools
    grim
    ffmpeg_6
    slurp
    vlc
    wl-clipboard

    # System
    tree
    unzip
    inotify-tools
  ];
}
