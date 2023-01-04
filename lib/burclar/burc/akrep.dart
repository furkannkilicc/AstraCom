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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AkrepYorum()));
                },
                child: const Text('Akrep')),

          ],
        )
    );
  }
}

class AkrepYorum extends StatelessWidget {
  const AkrepYorum({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: const Text('Akrep Burcu'),
        ),
        body: const Center(
          child:
          Text('Akrep karanlık ve gizemli bir burçtur. '
              'Yüksek bir kişisel çekim, derinlik ve güç sahibi olma arzusu onu ilişkilerinde yoğun deneyimlere çekecektir.'
          ),
        )

    );

  }
}