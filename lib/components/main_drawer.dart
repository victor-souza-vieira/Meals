import 'package:flutter/material.dart';
import '../utils/app-routes.dart';

/* menu que aparece ao lado */

class MainDrawer extends StatelessWidget {
  Widget _createItem(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 120,
            child: Text(
              'Vamos cozinhar???',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(height: 20),
          _createItem(
            Icons.restaurant,
            'Refeições',
            () => Navigator.of(context).pushNamed(AppRoutes.HOME),
          ),
          _createItem(Icons.settings, 'Configurações',
              () => Navigator.of(context).pushNamed(AppRoutes.SETTINGS)),
        ],
      ),
    );
  }
}
