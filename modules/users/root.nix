{ config, clan-core, ... }:
{
  imports = [
    # Set a root password
    clan-core.clanModules.root-password
  ];

  users.users.root.openssh.authorizedKeys.keys = config.users.users.yjpark.openssh.authorizedKeys.keys;
}
