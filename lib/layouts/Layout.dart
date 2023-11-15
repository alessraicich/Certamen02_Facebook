import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Importa esto para usar SystemUiOverlayStyle

class MainLayout extends StatelessWidget {
  final Widget child;

  MainLayout({required this.child});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        // Establecer el color de la barra de estado en blanco
        statusBarColor: Colors.white,
        // Establecer el brillo y el color de los iconos de la barra de estado
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      child: SafeArea(
        child: Scaffold(
          body: child, // El contenido principal de tu layout
        ),
      ),
    );
  }
}
