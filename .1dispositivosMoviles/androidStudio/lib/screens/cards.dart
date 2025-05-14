import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card screen')),
      body: ListView(children: [_customcard()]),
    );
  }
}

class _customcard extends StatelessWidget {
  const _customcard();

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).iconTheme.color;

    return Padding(
      padding: const EdgeInsets.only(top: 1),
      child: Card(
        child: Column(
          children: [
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Theme.of(context).primaryIconTheme.color,
              ),
              title: Text(
                "Nombre",
                style: TextStyle(
                  color: Theme.of(context).primaryIconTheme.color,
                ),
              ),
              subtitle: Text(
                "Puesto trabajo lorem ipsum dolor sit amet",
                style: TextStyle(
                  color: Theme.of(context).primaryIconTheme.color,
                ),
              ),
            ),
            //* otra parte
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'Aceptar',
                      style: TextStyle(
                        color: Theme.of(context).primaryIconTheme.color,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'Cancelar',
                      style: TextStyle(
                        color: Theme.of(context).primaryIconTheme.color,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
        color: primaryColor,
      ),
    );
  }
}
