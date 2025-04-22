{ config, clan-core, ... }:
{
  imports = [
    clan-core.clanModules.user-password
  ];

  programs.fish.enable = true;

  # generate a random password for our user below
  # can be read using `clan secrets get <machine-name>-user-password` command
  clan.user-password.user = "yjpark";
  users.users.yjpark = {
    isNormalUser = true;
    uid = 1000;
    description = "YJ Park";
    home = "/home/yjpark";
    shell = "/run/current-system/sw/bin/fish";
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
      "input"
      "podman"
      "disk"
      "systemd-journal"
    ];
    openssh.authorizedKeys.keys = config.users.users.root.openssh.authorizedKeys.keys;
  };

  security.sudo.extraConfig = ''
    yjpark  ALL=(ALL) NOPASSWD: ALL

    Defaults env_keep += "http_proxy"
    Defaults env_keep += "https_proxy"
    Defaults env_keep += "all_proxy"
    Defaults env_keep += "NIX_CURL_FLAGS"
  '';

  nix.settings.trusted-users = [ "root" "yjpark" ];
}
