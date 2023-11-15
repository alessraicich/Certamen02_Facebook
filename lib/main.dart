import 'package:flutter/material.dart';
import 'package:flutter_application_facebbok/Componentes/Navbar.dart';
import 'package:flutter_application_facebbok/Paginas/Notificaciones.dart';
import 'package:flutter_application_facebbok/Paginas/Perfil.dart';
import 'package:flutter_application_facebbok/Paginas/Amigos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    Notificaciones(),
    PerfilPage(),
    // Agrega aquí más páginas si necesitas.
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),// Tu contenido aquí
        bottomNavigationBar: Navbar(
          currentIndex: _selectedIndex,
          onItemSelected: _onItemTapped,
        ),
      ),
    );
  }
}
