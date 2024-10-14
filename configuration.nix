{ pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./networking.nix # generated at runtime by nixos-infect

  ];

  boot.tmp.cleanOnBoot = true;
  zramSwap.enable = true;
  networking.hostName = "ubuntu-8gb-nbg1-1";
  networking.domain = "";
  services.openssh.enable = true;
  users.users.root.openssh.authorizedKeys.keys = [''ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDS480h7/bnhjqhJH2af9/wuvk3yt5jUJaYmMPlSP8ha8lQRL1dDl/tpgkWuPz1EeQXEzVJXsRxE9wKJBa1q1FJ0lo6h1vmikLb1+ajS4uh/1RysD8e6hxZOk5bBFb2R7PeUrk4evv219t6v2Qee+VF0aUw+1PoOtwRhdyC7OD0jXpVlt3CcUIF0EtRwjoRHuYw+O8pIzW7GFd0FBgr58IYAJp1430CumOYVtPKPKP/b8BEN83qI7zYqZEujuRwGmPhj6KLBVIQ1uVNtvsY2/E5T+abTIfXHoDqTguQrAA2/8eJqCKBq6EBAyEKnYfJlFW6HpPuZvTC/VUFUOMiq8wiztCb8tbD9uEboQregEkCVjrMSBtikzcdDnT840EcYGeXqA517FjjAu0YUipDDCO3SCuMJNk937qdn5ruD/hNHF1hmsu7zGjBm1R+ACJmVs8ilQOrUgK1DqVNnXgoVj56qT+Sn7NcdLlgt0v31Mm+3OZlYYqOJKQtDwROf07Lt+MoZ2EYqi6ZEfa6amUp5Tyx6uIwHNKB0KseF8nc27TnmB1UUyL53/xpcPyMM9K1tw1BtfI2+5fh9Ow2swxpzwqUv312KQg3I+CvvSRzsJ/Rasal7q2BbpwtU8YEda68s1zIkPXx5Gui6v0lzh2CcmlJD3sddiichA3hq+5j7Q=='' ''ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAgEArBz1qcpA2K4e2a1AD+HuHELFiQ4gvX/Z7bb3XkY6fNj6SsgmWYNMTFAWlWTL1fuYco/1dffTrFcPEpLwIvQZyG45BVjQg155h6SDcSnuwBuasQ0qA47xKHz+9dLWdsZ/QAOzhreUerZcv1wrGnxQ5us0nd58b3xJUqAj6xgaUDsWzzfrPrnldYS4e1rRwadQYwFl89KiMhltzdrgTGkeGWehJ+RyQtORUmMcE3c7StrhiKlTiraYw+AXVwJVfjMNv06wczy4CEtcfKdOoN6uWgmfbvveozrJaoGCjSe5//18SdEOp0G3wW3xSoTZumJZgzRo53FCH+vubDYD19VRHmbw44tx6S3ppGuGsNqd1yjnnXZ9TnK8QdyNar06emcl8OmWwt0lj+7qBWlFFCHp9klZ8Wd3q9hJCAaFUeBR8mh4liBrXXEgtxk1yxdwxCiM8LJOnQbO+Bwk/lGNT7b8UODPxMostQ3ZjNcaI/oB/nex3j6ER4ZPUYx1Vfu6YWqKpH+MQe2sCMJiDo7cBHy//QMNdLbVOkbIJNXDpPksAK/MmPNFcFEiWa2DDjZRj8cs59G6gDATQTPtUhmAL+RctGfwCSzT4B+Gq6qLONbFXsDoMIFL/QBY1SkM9LY3AaCFVNshjH6feiEKZnY99Pgapu5Gofpc9SG415d1D70='' ];
  system.stateVersion = "24.11";
  environment.systemPackages = [ pkgs.vim pkgs.tmux pkgs.git pkgs.httpie ];
}
