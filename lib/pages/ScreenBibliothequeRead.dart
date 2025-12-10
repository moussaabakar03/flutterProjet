import 'package:flutter/material.dart';
import 'bottomNavigationBar.dart';

class ScreenBibliothequeRead extends StatelessWidget {
  const ScreenBibliothequeRead({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const SizedBox(height: 10),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back_ios,
                          color: Colors.white),
                    ),

                    const Text(
                      "EN LECTURE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    Stack(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.queue_music,
                              color: Colors.white, size: 26),
                        ),
                        Positioned(
                          right: 12,
                          top: 12,
                          child: Container(
                            width: 14,
                            height: 14,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: const Center(
                              child: Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20),


                Container(
                  height: 260,
                  width: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFB000FF).withOpacity(0.35),
                        blurRadius: 30,
                        spreadRadius: 8,
                      ),
                      BoxShadow(
                        color: const Color(0xFF00FFFF).withOpacity(0.25),
                        blurRadius: 20,
                        spreadRadius: 6,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Image.asset(
                      "assets/mmz.png", // 👈 ton image statique beat coloré
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 30),


                const Text(
                  "Titre de chanson",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Artiste Nom ",
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    Icon(Icons.favorite_border, color: Colors.white70),
                  ],
                ),

                const SizedBox(height: 25),


                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.indigo,
                    inactiveTrackColor: Colors.white12,
                    thumbColor: Colors.white,
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 6,
                    ),
                  ),
                  child: Slider(
                    min: 0,
                    max: 100,
                    value: 40,
                    onChanged: (v) {},
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("1:24",
                          style: TextStyle(
                              color: Colors.white70, fontSize: 12)),
                      Text("0:12",
                          style: TextStyle(
                              color: Colors.white70, fontSize: 12)),
                    ],
                  ),
                ),

                const SizedBox(height: 35),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.skip_previous,
                        size: 40, color: Colors.white.withOpacity(0.85)),
                    const SizedBox(width: 25),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(Icons.play_arrow,
                          size: 45, color: Colors.black),
                    ),
                    const SizedBox(width: 25),
                    Icon(Icons.skip_next,
                        size: 40, color: Colors.white.withOpacity(0.85)),
                  ],
                ),

                const SizedBox(height: 45),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.open_in_full,
                        color: Colors.white70, size: 20),
                    Icon(Icons.repeat,
                        color: Colors.white70, size: 22),
                  ],
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      );

  }
}
