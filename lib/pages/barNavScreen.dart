import 'package:flutter/material.dart';


class Barnavscreen extends StatelessWidget {
  const Barnavscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Bibliotheque", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
      actions: [
        Padding(
          padding: EdgeInsets.only(right:  16.0), // définir une marge intérieure pour l'icone pour éviter qu'il touche les bords de appbar
          child: Icon(Icons.share, size: 24),
        )
      ],
    );
  }
}
