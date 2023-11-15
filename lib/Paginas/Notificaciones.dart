import 'package:flutter/material.dart';
// import 'package:flutter_application_facebook/Componentes/TituloNotificaciones.dart'
import 'package:flutter_application_facebbok/Componentes/TituloNotificaciones.dart';
import 'package:flutter_application_facebbok/Componentes/Notificacion.dart';
import 'package:flutter_application_facebbok/layouts/Layout.dart';

class Notificaciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomHeader(),
            Column(
              children: [
                Notificacion(),
                Notificacion(),
                Notificacion(),
                Notificacion(),
                Notificacion(),
                Notificacion(),
              
              ],
            )
          ],
        ),
      ),
    );
  }
}