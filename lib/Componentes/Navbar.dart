import 'package:flutter/material.dart';


class Navbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemSelected;

  Navbar({
    required this.currentIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Para asegurarse de que los íconos estén distribuidos uniformemente
        children: List.generate(5, (index) {
          // Ajusta la lógica para seleccionar los íconos según el índice
          IconData iconData;
          switch (index) {
            case 0:
              iconData = Icons.home;
              break;
            case 1:
              iconData = Icons.video_call;
              break;
            case 2:
              iconData = Icons.person;
              break;
            case 3:
              iconData = Icons.notifications;
              break;
            case 4:
              iconData = Icons.menu;
              break;
            default:
              iconData = Icons.error; // En caso de un índice no esperado
          }
          return IconButton(
            icon: Icon(iconData),
            color: currentIndex == index ? Colors.blue : Colors.grey,
            onPressed: () => onItemSelected(index),
          );
        }),
      ),
    );
  }
}

