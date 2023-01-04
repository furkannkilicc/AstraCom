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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OglakYorum()));
                },
                child: const Text('Oğlak')),

          ],
        )
    );
  }
}
class OglakYorum extends StatelessWidget {
  const OglakYorum({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: const Text('Oğlak Burcu'),

        ),
        body: const Center(
          child:
          Text('Oğlaklar ciddilikleri, tutuculukları ve güçlü iradeleri ile tanımlanırlar. Çalışkanlıkları ile kolaylıkla başkalarının saygısını kazanırlar. Gerçek bir Oğlakın iki temel özelliği vardır. Güvenilirlik ve dürüstlük.'
          ),
        )

    );

  }
}