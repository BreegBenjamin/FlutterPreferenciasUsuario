import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/Preferences/preferences_user.dart';

import '../Widgets/menu_drawer.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'Settings';
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _colorSecundario;
  int _genero;
  String _nombre;
  TextEditingController _textController;
  final _prefs = new UserPreferences();

  @override
  void initState() {
    super.initState();
    _genero = _prefs.genero;
    _colorSecundario = _prefs.colorSecundario;
    _textController = new TextEditingController(text: _prefs.nombreUsuario);
    _prefs.ultimaPagina = SettingsPage.routeName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Page'),
        backgroundColor:
            (_prefs.colorSecundario) ? Colors.greenAccent : Colors.blueAccent,
        centerTitle: true,
      ),
      drawer: MenuDrawer(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Text(
              'Settings',
              style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          SwitchListTile(
            value: _colorSecundario,
            title: Text('Color Secundario'),
            onChanged: (bool state) {
              setState(() {
                _colorSecundario = state;
                _prefs.colorSecundario = state;
              });
            },
          ),
          RadioListTile(
            value: 1,
            title: Text('Masculino'),
            groupValue: _genero,
            onChanged: _setSelectedRadio,
          ),
          RadioListTile(
            value: 2,
            title: Text('Femenino'),
            groupValue: _genero,
            onChanged: _setSelectedRadio,
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona',
              ),
              onChanged: (String value) {
                _prefs.nombreUsuario = value;
              },
            ),
          )
        ],
      ),
    );
  }

  void _setSelectedRadio(int value) {
    _prefs.genero = value;
    _genero = value;
    setState(() {});
  }
}
