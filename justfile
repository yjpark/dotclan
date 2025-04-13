check:
    clan --version

install-nix:
    curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install

install-clan:
    nix shell git+https://git.clan.lol/clan/clan-core#clan-cli --refresh
