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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const KocYorum()));
                },
                child: const Text('Koç')),

          ],
        )
    );
  }
}
class KocYorum extends StatelessWidget {
  const KocYorum({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: const Text('Koç Burcu'),

        ),
        body: const Center(
          child:
          Text('Aktif, dinamik, insiyatif sahibi, hızlı, lider, yönetici,'
              'Bir komutan edasında olabilir ve yönetme arzusu ruhunda vardır.')
          ),
        );


  }
}