import 'package:flutter/material.dart';
import 'pages/profil.dart';
import 'pages/ScreenBibliotheque.dart';
import 'pages/ScreenBibliothequeRead.dart';
import 'pages/accueil.dart';
import 'pages/bottomNavigationBar.dart';
import 'pages/barNavProfil.dart';
import 'pages/barNavScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _pageIndex = 0;

  void setPage(int index) {
    setState(() => _pageIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeatFlow',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
        ),
      ),

      home: Scaffold(

        body: [
          HomePage(),
          Screenbibliotheque(),
          ScreenBibliothequeRead(),
          Profil(),
        ][_pageIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: setPage,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.indigo,
          unselectedItemColor: Colors.white70,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Accueil"),
            BottomNavigationBarItem(icon: Icon(Icons.library_music), label: "Bibliothèque"),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow),
              label: "Lecture",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          ],
        ),
      ),
    );
  }
}
