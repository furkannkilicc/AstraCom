import 'package:flutter/material.dart';
class KovaYorum extends StatelessWidget {
  const KovaYorum({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.indigo.shade900,
          title: const Text('Kova Burcu'),
        ),
        body:
        SafeArea(
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height:0),
                const Image(image: AssetImage(
                    "assets/leo.jpg"
                ),)
                ,const SizedBox(height: 60),
                 const Text('LEO',style:
                TextStyle(fontSize: 52,
                    fontWeight:FontWeight.w800),
                ),
                const SizedBox(height: 20),
                const Text('July 22 - August 23'),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Text(
                        'What type of person is a Leo Typical sun in Leo traits include being confident, comfortable being the center of attention, drama-adoring, ambitious, loyal, fiercely protective of their nearest and dearest, generous, luxury-loving, sunny, and big-hearted'
                    ),
                  ),
                ),

              ],
            ),
          ),
        )
    );

  }
}
