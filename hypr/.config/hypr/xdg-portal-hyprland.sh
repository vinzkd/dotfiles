#!/bin/bash
sleep 1
killall xdg-desktop-portal-hyprland
killall xdg-desktop-portal-gnome
killall xdg-desktop-portal-wlr
killall xdg-desktop-portal
logger 'killed all xdg-desktop'
sleep 1
/usr/libexec/xdg-desktop-portal-hyprland &
logger 'xdg-desktop-portal-hyprland started'
sleep 2
/usr/libexec/xdg-desktop-portal &
logger 'xdg-desktop-portal started'
sleep 3
/usr/libexec/xdg-desktop-portal-gtk &
logger 'xdg-desktop-portal-gtk started'
