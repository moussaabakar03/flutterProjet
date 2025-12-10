import 'package:flutter/material.dart';
import 'bottomNavigationBar.dart';
import 'barNavProfil.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Barnavprofil(),
        Expanded(child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      ClipOval(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),

                          /*child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person),
                          iconSize: 120,
                        ),*/

                          child: Image.asset(
                            "assets/image1.png",
                            width: 170,
                            height: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      /*ClipOval(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo, width: 5),
                          shape: BoxShape.circle, // Important
                        ),
                        child: Image.asset(
                          "assets/image1.png",
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),*/

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

                      SizedBox(height: 20,),

                      Container(
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10)),

                        width: 300,
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),

                        child: Center(
                          child: Row(
                            children: [
                              Icon(Icons.cloud_upload_outlined),
                              SizedBox(width: 10),
                              Text(
                                "Uploader une musique",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                SizedBox(height: 15),

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Musique Preferée",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),

                      SizedBox(height: 10),

                      SizedBox(
                        height: 240,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          children: [
                            _blocFavoris("Chasse à l'homme", "Clashe criminel", "assets/clashe.png"),
                            SizedBox(width: 15),
                            _blocFavoris("Loin des etoiles", "MMZ", "assets/mmz.png"),
                            SizedBox(width: 15),
                            _blocFavoris("Est ce que tu m'aime?", "Maitre Gims", "assets/gims.png"),
                            SizedBox(width: 15),
                            _blocFavoris("Jefe", "Ninho", "assets/ninho.png"),
                            SizedBox(width: 15),
                            _blocFavoris("Je me retire", "Gims", "assets/gims.png"),
                            SizedBox(width: 15),
                            _blocFavoris("Bardée", "Keblack", "assets/musique.jpg"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
        ),
      ]);

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


  Widget _blocFavoris(titre, nom, photo){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              photo,
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(height: 8),

          Text(
            titre,
            style: TextStyle(color: Colors.white),
          ),

          Text(
            nom,
            style: TextStyle(color: Colors.white70, fontSize: 12),
          ),
        ],
      ),
    );
  }

}
