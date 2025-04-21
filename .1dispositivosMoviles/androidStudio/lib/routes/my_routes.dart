import 'package:app_dos/models/menu_home.dart';
import 'package:app_dos/screens/screens.dart';
import 'package:app_dos/widgets/my_home_page.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static final initialRoute = 'home';
  static final List<MenuHome> menuOptions = [
    // MenuHome(
    //   icon: Icons.home,
    //   titleMenu: 'Home',
    //   route: 'home',
    //   screen: MyHomePage(),
    // ),
    MenuHome(
      icon: Icons.list,
      titleMenu: 'ListViewUno',
      route: 'listview1',
      screen: ListViewUno(),
    ),
    MenuHome(
      icon: Icons.list_alt,
      titleMenu: 'ListViewDos',
      route: 'listview2',
      screen: ListViewDos(),
    ),
    MenuHome(
      icon: Icons.credit_card,
      titleMenu: 'Card',
      route: 'card',
      screen: CardScreen(),
    ),
    MenuHome(
      icon: Icons.warning,
      titleMenu: 'Alert',
      route: 'alert',
      screen: AlertScreen(),
    ),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext c) => MyHomePage(),
  //   'listview1': (BuildContext c) => ListViewUno(),
  //   'listview2': (BuildContext c) => ListViewDos(),
  //   'card': (BuildContext c) => CardScreen(),
  //   'alert': (BuildContext c) => AlertScreen(),
  // };

  static Map<String, Widget Function(BuildContext)> myRoutes() {
    Map<String, Widget Function(BuildContext)> temp = {};

    temp.addAll({
      'home': (BuildContext c) => MyHomePage(),
    }); //!agregando de forma estatica

    for (var element in menuOptions) {
      temp.addAll({element.route: (BuildContext c) => element.screen});
    }

    return temp;
  }
}
