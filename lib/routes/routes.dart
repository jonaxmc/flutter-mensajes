import 'package:app_mensajes/pages/chat_page.dart';
import 'package:app_mensajes/pages/loading_page.dart';
import 'package:app_mensajes/pages/login_page.dart';
import 'package:app_mensajes/pages/register_page.dart';
import 'package:app_mensajes/pages/usuarios_page.dart';
import 'package:flutter/cupertino.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'usuarios': (_) => UsuariosPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoadingPage()
};
