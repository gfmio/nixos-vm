{ config, lib, pkgs, ... }:

{
  imports = [
    ./nix.nix
    ./boot.nix
    ./kernel.nix
    ./system.nix
    ./hardware/hardware.nix
    ./time.nix
    ./smart.nix
    ./thermal.nix
    ./power.nix
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
    ./pipewire.nix
    ./xrdp.nix
    ./docker.nix
    ./podman.nix
    ./lxd.nix
    ./libvirt.nix
    ./virtualbox.nix
    ./fonts.nix
    ./packages.nix
    ./restic.nix
    ./flatpak.nix
    ./clamav.nix
    ./gnome-keyring.nix
    ./netdata.nix
    ./bluetooth.nix
    ./syncthing.nix
    ./dns.nix
    ./tor.nix
  ];
}
