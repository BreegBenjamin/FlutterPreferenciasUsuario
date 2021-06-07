import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/Pages/home_page.dart';
import 'package:preferencias_usuario/src/Pages/party_page.dart';
import 'package:preferencias_usuario/src/Pages/settings_pages.dart';
import 'package:preferencias_usuario/src/Preferences/preferences_user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new UserPreferences();
  await prefs.initPreft();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final prefs = new UserPreferences();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName: (_) => HomePage(),
        SettingsPage.routeName: (_) => SettingsPage(),
        PartyPage.routeName: (_) => PartyPage(),
      },
    );
  }
}
