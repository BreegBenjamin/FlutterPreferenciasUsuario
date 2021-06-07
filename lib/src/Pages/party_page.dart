import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/Preferences/preferences_user.dart';
import 'package:preferencias_usuario/src/Widgets/menu_drawer.dart';
import 'package:preferencias_usuario/src/Widgets/navigationbar_custom.dart';

class PartyPage extends StatelessWidget {
  static String routeName = 'party';
  final _prefs = new UserPreferences();
  @override
  Widget build(BuildContext context) {
    _prefs.ultimaPagina = PartyPage.routeName;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: MenuDrawer(),
      body: Stack(
        children: [
          _backPage(),
          _cardData(),
        ],
      ),
      bottomNavigationBar: NavigationBarCustom(),
    );
  }

  Widget _backPage() {
    String imgUlr = (_prefs.colorSecundario)
        ? 'https://i.pinimg.com/564x/b1/5c/48/b15c4854c04c7161261ea2e33464e5a5.jpg'
        : 'https://i.pinimg.com/564x/58/6c/bb/586cbb0cabcb1049aa9ba1df8b51729f.jpg';
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: NetworkImage(imgUlr),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _cardData() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text('Card Person'),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: Icon(Icons.share),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 17.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text('Buy')),
                SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: Text('Cancel'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
