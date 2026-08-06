{ pkgs, config, ... }:

{
  # --- Languages -------------------------------------------------------
  languages.java = {
    enable = true;
    jdk.package = pkgs.jdk21;
    gradle.enable = true;
  };

  languages.python = {
    enable = true;
    version = "3.12.4";
    venv.enable = true;
    uv.enable = true;
  };

  languages.javascript = {
    enable = true;
    package = pkgs.nodejs_22;
    npm.enable = true;
  };

  # --- Packages ----------------------------------------------------------
  # Project-relevant CLI tools. Personal terminal tooling (starship, tmux,
  # herdr, nvim) is intentionally NOT here — that lives in your chezmoi +
  # `nix profile install` setup so it's available everywhere, not just
  # inside this project's shell. Uncomment below if you want them
  # project-scoped instead.
  packages = [
    pkgs.git
    # pkgs.starship
    # pkgs.tmux
    # pkgs.neovim
    # pkgs.herdr
    # pkgs.hunk
  ];

  # --- Project-local config, if you keep any in-repo -----------------
 #  env = {
 #   XDG_CONFIG_HOME = "${config.env.DEVENV_ROOT}/.config";
 # };

}

