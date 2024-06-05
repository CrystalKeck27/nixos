_: {
  programs.git = {
    enable = true;
    userName = "CrystalKeck27";
    userEmail = "meaneea@gmail.com";
    extraConfig = {
      init = {defaultBranch = "main";};
      core.editor = "code";
    };
  };
}