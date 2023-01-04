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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const BogaYorum()));
                },
                child: const Text('Boga')),

          ],
        )
    );
  }
}
class BogaYorum extends StatelessWidget {
  const BogaYorum({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: const Text('Boğa Burcu'),

        ),
        body: const Center(
          child:
          Text('Boğalar hedefleri doğrultusunda ilerlerken, '
              'tüm dikkatlerini toplayabilme yeteneklerinin yanında maddecilikleri ile tanınırlar.'
          ),
        ),

    );

  }
}