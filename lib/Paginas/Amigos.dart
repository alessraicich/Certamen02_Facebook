import 'package:flutter/material.dart';
import 'package:flutter_application_facebbok/Componentes/Navbar.dart';

void main() {
  runApp(Amigos());
}

class Amigos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solicitudes de Amistad',
      home: FriendRequestsScreen(),
    );
  }
}

class FriendRequestsScreen extends StatelessWidget {
  final List<FriendRequest> friendRequests = [
    FriendRequest(name: 'Alice Doe', profileImageUrl: 'assets/images/amigo1.png'),
    FriendRequest(name: 'Jona Smith', profileImageUrl: 'assets/images/amigo.png'),
    FriendRequest(name: 'Samantha Miller', profileImageUrl: 'assets/images/amigo3.avif'),
    FriendRequest(name: 'Ava Johnson', profileImageUrl: 'assets/images/amigo4.jpeg'),
    FriendRequest(name: 'Riley Lee', profileImageUrl: 'assets/images/amigo5.jpeg'),
    FriendRequest(name: 'Mason McGill', profileImageUrl: 'assets/images/amigo6.webp'),
    // Agrega más solicitudes aquí
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solicitudes de Amistad'),
      ),
      body: ListView.builder(
        itemCount: friendRequests.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(friendRequests[index].profileImageUrl),
              ),
              title: Text(friendRequests[index].name),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Botón para Confirmar la solicitud
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    ),
                    onPressed: () {
                      // Lógica para aceptar la solicitud
                    },
                    child: Text('Confirmar'),
                  ),
                  SizedBox(width: 8),
                  // Botón para Eliminar la solicitud
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    ),
                    onPressed: () {
                      // Lógica para rechazar la solicitud
                    },
                    child: Text('Eliminar'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class FriendRequest {
  String name;
  String profileImageUrl;

  FriendRequest({required this.name, required this.profileImageUrl});
}