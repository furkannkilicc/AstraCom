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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const YengecYorum()));
                },
                child: const Text('Akrep')),

          ],
        )
    );
  }
}
class YengecYorum extends StatelessWidget {
  const YengecYorum({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: const Text('Yengeç Burcu'),

        ),
        body: const Center(
          child:
          Text('Yengeç burcu kadınları, kırılgan ve hassaslardır. Geçmişinden kopamayan yengeç kadınları, kalplerini başkalarına çok zor açarlar. Yengeç burcu kadınlarının en önemli özellikleri, duygusal ve sakin yapıya sahip olmalarıdır. Yengeç burcu kadınları, anaç ve merhametli duygulara sahiptir.'
          ),
        )

    );

  }
}
