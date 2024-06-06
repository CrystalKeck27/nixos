_: {
  home.file.".config/git/config".text = ''
    [core]
            editor = "code"

    [init]
            defaultBranch = "main"

    [user]
            email = "meaneea@gmail.com"
            name = "CrystalKeck27"

    [includeIf "gitdir:~/work/"]
            path = "~/work/.gitconfig"
  '';

  home.file."work/.gitconfig".text = ''
    [user]
    email = Crystal.Keck@millerwelds.com
    name = Crystal Keck
  '';
}