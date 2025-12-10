import 'package:flutter/material.dart';
import 'navAccueil.dart';


// Page principale
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Navigation en haut
        Navaccueil(),

        // Contenu principal et mini player
        Expanded(
          child: Column(
            children: [
              // Liste des sections avec défilement
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(12),
                  children: [
                    sectionTitle("écoutez à nouveau"),
                    albumList(),

                    const SizedBox(height: 20),

                    sectionTitle("recommandé pour vous"),
                    albumList(),

                    const SizedBox(height: 20),

                    sectionTitle("top charts"),
                    albumList(),
                  ],
                ),
              ),

              // Mini player en bas
              miniPlayer(),
            ],
          ),
        ),
      ],
    );
  }
}


// titre de section
Widget sectionTitle(String title) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

// liste horizontale d’albums
Widget albumList() {
  return SizedBox(
    height: 120,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          width: 100,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(12),
          ),
        );
      },
    ),
  );
}

/*
// liste horizontale d’albums
Widget albumList() {
  // Liste des images (assets) des albums
  final List<String> albums = [
    'assets/ninho.png',
    'assets/mmz.png',
    'assets/ninho.png',
    'assets/ninho.png',
    'assets/gims.png',
    'assets/ninho.png',
    'assets/ninho.png',
    'assets/clashe.png',
    'assets/ninho.png',
    'assets/ninho.png',

  ];

  return SizedBox(
    height: 120,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: albums.length,
      itemBuilder: (context, index) {
        return Container(
          width: 100,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 5,
                offset: Offset(2, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              albums[index],
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    ),
  );
}
*/
// mini player
Widget miniPlayer() {
  return Container(
    height: 70,
    padding: const EdgeInsets.symmetric(horizontal: 12),
    decoration: const BoxDecoration(
      color: Color(0xFF1A1A1A),
      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
    ),
    child: Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.music_note),
        ),
        const SizedBox(width: 10),

        const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "titre de la musique",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "nom de l'artiste",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),

        IconButton(
          icon: const Icon(Icons.pause),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ],
    ),
  );
}
