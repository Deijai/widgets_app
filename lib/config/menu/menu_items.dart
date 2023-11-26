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
];
