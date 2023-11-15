import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Notificacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
            ),
            child: Stack(
              alignment: Alignment.center, // Alinea los hijos del Stack en el centro
              children: <Widget>[
                Image.asset('assets/images/Tipa.png',
                fit: BoxFit.cover,
                width: 72,
                height: 72,),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(26, 116, 228, 1),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                      'assets/images/thumbs_up.svg',
                      fit: BoxFit.fitWidth,
                      width: 16.0,
                      height: 16.0,
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8,),
          const Flexible( // Añade este widget
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your text here',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                ),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Bibendum vel egestas egestas cras.',
                  softWrap: true,),
              ],
            ),
          ),
          const SizedBox(width: 6,),
          const Icon(Icons.more_horiz), // Este es un ejemplo de un icono de puntos verticales
        ],
      
      ),
    );
  }
}
