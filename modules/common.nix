{ config, clan-core, ... }:
{
  imports = [
    # Enables the OpenSSH server for remote access
    clan-core.clanModules.sshd
    clan-core.clanModules.state-version
    ./users/root.nix
    ./users/yjpark.nix
  ];

  # Locale service discovery and mDNS
  services.avahi.enable = true;
}
