import 'package:flutter/material.dart';


class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({super.key});

  @override
  State<Bottomnavigationbar> createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {

  static int _pageIndex = 0;
  static int age = 0;

  setPage(int index){
    setState((){
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _pageIndex,
      onTap: (index) => setPage(index),

      backgroundColor: Colors.black,
      selectedItemColor: Colors.indigo,
      unselectedItemColor: Colors.white70,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Accueil"),
        BottomNavigationBarItem(icon: Icon(Icons.library_books), label: "Bibliotheque"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
      ],
    );
  }
}


