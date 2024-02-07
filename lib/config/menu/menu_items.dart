import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const List<MenuItems> appMenuItems = [
  MenuItems(
      title: 'Botões',
      subTitle: 'Vários botões em flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItems(
      title: 'Cards',
      subTitle: 'Cards em flutter',
      link: '/cards',
      icon: Icons.credit_card_outlined),
  MenuItems(
      title: 'Progress',
      subTitle: 'Progress em flutter (geral e controlados)',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItems(
      title: 'Snackbar',
      subTitle: 'Snackbar e dialogos em flutter',
      link: '/snackbar',
      icon: Icons.info_outlined),
  MenuItems(
      title: 'Animated',
      subTitle: 'Animated em flutter',
      link: '/animated',
      icon: Icons.animation_outlined),
  MenuItems(
      title: 'Ui Controls',
      subTitle: 'Ui Controls em flutter',
      link: '/uicontrols',
      icon: Icons.control_point_duplicate_rounded),
  MenuItems(
      title: 'App Tutorial',
      subTitle: 'App Tutorial em flutter',
      link: '/apptutorial',
      icon: Icons.tour_rounded),
  MenuItems(
      title: 'Infinite Scroll',
      subTitle: 'Infinite Scroll em flutter',
      link: '/infinite',
      icon: Icons.perm_device_information_outlined),
  MenuItems(
      title: 'Riverpod Counter',
      subTitle: 'Riverpod Counter em flutter',
      link: '/counter',
      icon: Icons.countertops_outlined),
  MenuItems(
      title: 'Theme Changer',
      subTitle: 'Theme Changer em flutter',
      link: '/theme-changer',
      icon: Icons.dark_mode_outlined),
];
