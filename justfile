check:
    clan --help

install-nix:
    curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install

install-clan:
    nix shell git+https://git.clan.lol/clan/clan-core#clan-cli --refresh

install-nixos-facter:
    # need to install this on target machine
    sudo nix profile install "nixpkgs#nixos-facter"
    # then run `clan machine update-hardware-config`

list-disks:
    lsblk --output NAME,ID-LINK,FSTYPE,SIZE,MOUNTPOINT
