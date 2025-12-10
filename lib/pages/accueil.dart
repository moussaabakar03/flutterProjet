import 'package:flutter/material.dart';
import 'navAccueil.dart';



// page principale
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // structure principale de la page
    return Scaffold(
      // couleur de fond
      backgroundColor: const Color(0xFF0F0F0F),

      // barre du haut
      appBar: AppBar(
        // fond transparent
        backgroundColor: Colors.transparent,

        // enlever l’ombre
        elevation: 0,

        // titre de la barre
        title: const Text("RECHERCHER"),

        // icône à droite
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.mic),
          )
        ],
      ),

      // contenu principal
      body: Column(
        children: [
          // partie qui prend tout l’espace
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(12),

              // empilement vertical des sections
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // titre de section
                  sectionTitle("écoutez à nouveau"),

                  // liste des albums
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
          ),

          // mini lecteur de musique
          miniPlayer(),
        ],
      ),

    );
  }
}

// widget du titre de chaque section
Widget sectionTitle(String title) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),

    // affichage du texte
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

// widget de la liste horizontale des albums
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

// widget du mini lecteur
Widget miniPlayer() {
  return Container(
    height: 70,
    padding: const EdgeInsets.symmetric(horizontal: 12),

    // décoration du bas
    decoration: const BoxDecoration(
      color: Color(0xFF1A1A1A),
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(15),
      ),
    ),

    // affichage en ligne
    child: Row(
      children: [
        // pochette
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

        // infos musique
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

        // bouton pause
        IconButton(
          icon: const Icon(Icons.pause),
          onPressed: () {},
        ),

        // bouton menu
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ],
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