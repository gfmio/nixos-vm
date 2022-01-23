#
# GNOME settings
#

{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.modules.gnome;
in
{
  imports = [];

  options = {
    modules = {
      gnome = {
        enable = mkOption { type = types.bool; default = false; };
      };
    };
  };

  config = mkIf cfg.enable {
    services.xserver.desktopManager.gnome.enable = true;

    environment.gnome3.excludePackages = with pkgs.gnome3; [
      epiphany
      evolution
      gnome-maps
      accerciser
    ];

    # Enable Chrome GNOME Shell native host connector
    # This is a DBus service allowing to install GNOME Shell extensions from a web browser.
    services.gnome3.chrome-gnome-shell.enable = true;

    # Enable GNOME Keyring daemon
    services.gnome3.gnome-keyring.enable = true;
  };
}
