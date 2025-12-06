import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF1A1A1A), // fond sombre

        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),

          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            margin: EdgeInsets.all(10),
            //color: Colors.black87, // fond noir comme dans l’image
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// ---- CENTER ITEMS ----
                Row(
                  children: [
                    //IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.white, size: 28,)),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu, size: 28, color: Colors.white),
                    ),
                    //Icon(Icons.menu, color: Colors.white, size: 28),
                    const SizedBox(width: 20),
                    Text("Accueil", style: TextStyle(color: Colors.white)),
                  ],
                ),

                Text("Biblihèque", style: TextStyle(color: Colors.white)),

                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.purple, width: 2),
                      ),
                      child: const Icon(
                        Icons.person_outline,
                        color: Colors.white70,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      "Profil",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        body: Center(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: BoxBorder.all(color: Colors.indigo, width: 5),
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person),
                        iconSize: 120,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Abakar Iyere",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Membre depuis 2023",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),

              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: BoxBorder.all(color: Colors.indigo, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _block("120h", "Heures debuts"),
                    _divider(),
                    _block("45", "Artistes suivis"),
                    _divider(),
                    _block("320", "Favoris"),
                  ],
                ),
              ),

              SizedBox(height: 15),

              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),

                decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Column(
                  children: [
                    Text(
                      "Espace Artiste",
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Voici un code Flutter complet pour reproduire exactement ton design :Voici un code Flutter complet pour reproduire exactement ton design : Voici un code Flutter complet pour reproduire exactement ton design :Voici un code Flutter complet pour reproduire exactement ton design : Voici un code Flutter complet pour reproduire exactement ton design :",
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                    Container(
                      //decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      width: 250,
                      color: Colors.indigo,
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.cloud_upload_outlined),
                            SizedBox(width: 10),
                            Text(
                              "Uploder une musique",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _block(String valeur, String label) {
    return Container(
      child: Column(
        children: [
          Text(
            valeur,
            style: TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(label, style: TextStyle(color: Colors.white70, fontSize: 12)),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(height: 35, width: 1.3, color: Colors.indigo);
  }
}




/*
return MaterialApp(
home: Scaffold(
backgroundColor: Colors.blue,

appBar: PreferredSize(
preferredSize: Size.fromHeight(kToolbarHeight),
child: Container(
//decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.red, width: 3)),
decoration: BoxDecoration(
color: Colors.white,
border: Border.all(color: Colors.black),
borderRadius: BorderRadius.circular(16)
),
margin: EdgeInsets.all(10), // marge autour de l’AppBar

//child: ClipRRect(
// borderRadius: BorderRadius.circular(16), // arrondir l’AppBar
child: AppBar(
title: Text(
"BeatFlow",
style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigoAccent,),
),
backgroundColor: Colors.transparent,
/*shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: Colors.black),
                ),*/
// elevation: 0, // ← Supprime l'ombre native
actions: [
IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
],
),
//),
),
),

body: Column(
children: [
Container(
margin: EdgeInsets.all(35),
child: Column(
children: [
ElevatedButton(onPressed: () {}, child: Text("Téléchargement", style: TextStyle(color: Colors.black),)),
SizedBox(height: 30,),
ElevatedButton(onPressed: () {}, child: Text("Personnalisation", style: TextStyle(color: Colors.black),)),
],
)
),

SizedBox(height: 10,),
Container(
margin: EdgeInsets.all(10),
padding: EdgeInsets.all(10),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(16)
),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
//SizedBox(width: 10,),
ElevatedButton(onPressed: () {}, child: Text("Artiste", style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo,),),
ElevatedButton(onPressed: () {}, child: Text("Album", style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo,),),
ElevatedButton(onPressed: () {}, child: Text("Genre", style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo,),),
],
),
)

],
)
,
bottomNavigationBar: BottomNavigationBar(
items: const [
BottomNavigationBarItem(label: "Accueil", icon: Icon(Icons.home)),
BottomNavigationBarItem(
label: "Naviguer",
icon: Icon(Icons.arrow_circle_down_outlined),
),
],
),
),
);

*/