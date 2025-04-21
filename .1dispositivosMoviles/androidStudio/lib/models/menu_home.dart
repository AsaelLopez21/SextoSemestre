import 'package:flutter/material.dart';

class MenuHome {
  final IconData icon;
  final String titleMenu;
  final String route;
  final Widget screen;

  const MenuHome({
    required this.icon,
    required this.titleMenu,
    required this.route,
    required this.screen,
  });
}
