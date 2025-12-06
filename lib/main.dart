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
                      IconButton(onPressed: (){}, icon: Icon(Icons.menu, size: 28, color: Colors.white)),
                      //Icon(Icons.menu, color: Colors.white, size: 28),
                      const SizedBox(width: 20),
                      Text("Accueil", style: TextStyle(color:Colors.white),),

                    ],
                  ),

                  Text("Biblihèque", style: TextStyle(color:Colors.white),),

                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.purple, width: 2),
                        ),
                        child: const Icon(Icons.person_outline,
                            color: Colors.white70, size: 20),
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        "Profil",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
        ),

        body: Center(
        
      ),
    );
  }

}