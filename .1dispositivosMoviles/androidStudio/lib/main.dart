import 'package:app_dos/routes/my_routes.dart';
import 'package:app_dos/themes/theme_app.dart';
// import 'package:app_dos/widgets/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:app_dos/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ListViewDos(),
      initialRoute: MyRoutes.initialRoute,
      theme: ThemeApp.primaryTheme(),
      routes: MyRoutes.myRoutes(),
    );
  }
}
