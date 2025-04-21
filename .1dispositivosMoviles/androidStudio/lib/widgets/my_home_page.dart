import 'package:app_dos/routes/my_routes.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorIcon = Theme.of(context).iconTheme.color;
    // List<String> cosas = [
    //   'Home',
    //   'List view uno',
    //   'List view dos',
    //   'Card',
    //   'Alert',
    // ];
    final menuOptions = MyRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home page', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.separated(
        itemBuilder:
            (BuildContext context, i) => ListTile(
              leading: Icon(menuOptions[i].icon, color: colorIcon),
              title: Text(
                menuOptions[i].titleMenu,
                style: TextStyle(color: colorIcon),
              ),
              trailing: Icon(Icons.navigate_next_outlined, color: colorIcon),
              onTap: () => Navigator.pushNamed(context, menuOptions[i].route),
            ),
        separatorBuilder: (BuildContext context, i) => Divider(),
        itemCount: menuOptions.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.plus_one_outlined,
          color: Theme.of(context).primaryIconTheme.color,
        ),
      ),
    );
  }
}
