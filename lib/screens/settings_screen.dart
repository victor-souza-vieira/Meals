import 'package:flutter/material.dart';
import '../components/main_drawer.dart';

/* tem que ter cuidado com o empilhamento de pilhas */

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text("Configs"),
      ),
    );
  }
}
