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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TeraziYorum()));
                },
                child: const Text('Akrep')),

          ],
        )
    );
  }
}
class TeraziYorum extends StatelessWidget {
  const TeraziYorum({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: const Text('Terazi Burcu'),

        ),
        body: const Center(
          child:
          Text('Sosyal bir birey olmak ya da sosyal bir arkadaş çevresine sahip olmak terazi burcu sevdikleri arasında yer alır. Terazi burcu arkadaş edinmekte ya da sosyal çevresini genişletmekte hiç zorlanmaz.'
          ),
        )

    );

  }
}