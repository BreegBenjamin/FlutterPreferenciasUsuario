import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/Preferences/preferences_user.dart';

import '../Widgets/menu_drawer.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'Home';
  final _prefs = new UserPreferences();
  @override
  Widget build(BuildContext context) {
    _prefs.ultimaPagina = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor:
            (_prefs.colorSecundario) ? Colors.greenAccent : Colors.blueAccent,
        centerTitle: true,
      ),
      drawer: MenuDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color Secundario : ${_prefs.colorSecundario}'),
          Divider(),
          Text('Genero:  ${_prefs.genero}'),
          Divider(),
          Text('Nombre De Usuario: ${_prefs.nombreUsuario}'),
          Divider(),
        ],
      ),
    );
  }
}
