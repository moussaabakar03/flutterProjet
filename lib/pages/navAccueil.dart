import 'package:flutter/material.dart';

class Navaccueil extends StatelessWidget {
  const Navaccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: TextField(
        decoration: InputDecoration(
          hintText: "rechercher artistes, titres...",
          prefixIcon: const Icon(Icons.search),
          filled: true,
          fillColor: Colors.grey.shade900,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Icon(Icons.mic),
        )
      ],
    );
  }
}
