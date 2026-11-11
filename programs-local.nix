{ config, pkgs, inputs, ... }:

{
   environment.systemPackages = with pkgs; [
git
vim
kitty
noctalia
appimage-run
libappimage
fastfetch
cava
btop
drawio
gnome-disk-utility
quickshell
curl
wl-clipboard
stremio-linux-shell
brightnessctl
mixxx
vscodium
pokego
yazi
xwayland-satellite
  ];

#  programs.hyprland = {
#         enable = true;
#         xwayland.enable = true;
#         withUWSM = true;
#  };

  programs.niri.enable = true;

#  services. = {
#     desktopManager.plasma6.enable = true;
#  };

#  environment.plasma6.excludePackages = with pkgs.kdePsckages; [
#plasma-browser-integration
#konsole
#elisa
#  ];

  xdg.portal = {
      enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

#  programs.steam = {
#        enable = true;
#        remotePlay.openFirewall = true;
#        dedicatedServer.openFirewall = true;
#  };

#  hardware.graphics = {
#         enable = true;
#         enable32Bit = true;
#  };

  programs.firefox.enable = true;

#  programs.gamemode.enable = true;

}
