import 'package:flutter/material.dart';

void main() {
  runApp(const PerfilPage());
}

class PerfilPage extends StatelessWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil de Facebook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perfil'),
        ),
        body: ListView(
          children: const [
            _HeaderPerfil(),
            // Aquí puedes añadir más widgets que representen el contenido del perfil
          ],
        ),
      ),
    );
  }
}

class _HeaderPerfil extends StatelessWidget {
  const _HeaderPerfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          'assets/images/Ciudad.jpg',
          width: screenWidth,
          height: screenHeight / 3,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: screenHeight / 3 - 50,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/perfil.jpg'),
          ),
        ),
        Positioned(
          top: screenHeight / 3 + 60,
          child: Column(
            children: [
              Text(
                'Nombre de Usuario',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    ),
                    onPressed: () {
                      // Acción del botón
                    },
                    child: Text('Add to Story'),
                  ),
                  SizedBox(width: 8), // Espacio entre los botones
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                    ),
                    onPressed: () {
                      // Acción del segundo botón
                    },
                    child: Text('Edit Profile'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

          



