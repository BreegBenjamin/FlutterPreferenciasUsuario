import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final _userPreference = new UserPreferences._internal();
  UserPreferences._internal();

  factory UserPreferences() {
    return _userPreference;
  }
  SharedPreferences _prefs;
  Future initPreft() async {
    _prefs = await SharedPreferences.getInstance();
  }

  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value) {
    _prefs.setInt('genero', value);
  }

  get colorSecundario {
    return _prefs.getBool('secundario') ?? false;
  }

  set colorSecundario(bool value) {
    _prefs.setBool('secundario', value);
  }

  get nombreUsuario {
    return _prefs.getString('nombre') ?? 'Benjamin';
  }

  set nombreUsuario(String value) {
    _prefs.setString('nombre', value);
  }

  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value) {
    _prefs.setString('ultimaPagina', value);
  }
}
