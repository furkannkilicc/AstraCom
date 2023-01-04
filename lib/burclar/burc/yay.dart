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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const YayYorum()));
                },
                child: const Text('Akrep')),

          ],
        )
    );
  }
}
class YayYorum extends StatelessWidget {
  const YayYorum({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: const Text('Yay Burcu'),

        ),
        body: const Center(
          child:
          Text('Yay erkil, maceraperest ve risk almaktan, hayata açık durmaktan keyif alan bir burçtur. Burcun sembolünde ileri doğru atılan ok, bu burcun geçmişi değil, geleceğe yönelik olduğunu gösterir. Pozitif ve hayatı olduğu gibi kabul eden tutumları ile Yaylar keyif veren, geniş görüşlü ve eğlendirici partnerlerdir.')
        )
    );

  }
}