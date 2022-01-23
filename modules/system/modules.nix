{ config, lib, pkgs, ... }:

{
  imports = [
    ./nix.nix
    ./boot.nix
    ./hardware/hardware.nix
    ./time.nix
    ./security.nix
    ./networking.nix
    ./i18n.nix
    ./sound.nix
    ./x.nix
    ./displayManager.nix
    ./gnome.nix
    ./sway.nix
    ./i3.nix
    ./dconf.nix
    ./users.nix
    ./cups.nix
    ./ssh.nix
    ./gpg.nix
    ./mtr.nix
    ./pipewire.nix
    ./xrdp.nix
    ./docker.nix
    ./podman.nix
    ./fonts.nix
    ./packages.nix
    ./restic.nix
  ];
}
