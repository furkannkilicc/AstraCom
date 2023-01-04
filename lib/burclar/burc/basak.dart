import 'package:flutter/material.dart';
class Page1 extends StatelessWidget {
  const Page1({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: const Text('Lütfen burcunuzu seçiniz'),
        ),
        body: Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const BasakYorum()));
                },
                child: const Text('Başak')),

          ],
        )
    );
  }
}
class BasakYorum extends StatelessWidget {
  const BasakYorum({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: const Text('Başak Burcu'),

        ),
        body: const Center(
          child:
           Text('Başaklar çalışkan ve pratik insanlar olup, yaşamlarındaki en önemli konu İş tir.'
              ' Güvendikleri kişilere yardım etmeyi sevmelerine rağmen, inanmadıkları ve tembel olduklarını bildikleri kişilere karşı soğuk davranırlar.'
          ),
        )

    );

  }
}