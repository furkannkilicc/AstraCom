import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:test_1/burclar/burc/aslan.dart';
import 'package:test_1/burclar/burc/ikizler.dart';
import 'package:test_1/burclar/burc/koc.dart';
import 'package:test_1/burclar/burc/kova.dart';
import 'package:test_1/burclar/burc/oglak.dart';
import 'package:test_1/burclar/burc/terazi.dart';
import 'package:test_1/burclar/burc/yay.dart';
import 'package:test_1/burclar/burc/yengec.dart';
import 'package:test_1/pages/profile/profile_screen.dart';
import 'burclar/burc/akrep.dart';
import 'burclar/burc/basak.dart';
import 'burclar/burc/boga.dart';
import 'package:test_1/pages/giris.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_1/burclar/burc/balik.dart';
import 'package:intl/intl.dart';
import 'package:test_1/pages/friends/friends_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: FirstPage());
  }
}

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Container(
            height: 900,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/space.jpg'), fit: BoxFit.cover)),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(60, 50, 0, 0),
                        child: Text(
                          'Welcome!',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                          child: Text(
                            userPost,
                            style: GoogleFonts.pacifico(
                                fontSize: 30, color: Colors.white),
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 45),
                Container(
                  margin: const EdgeInsets.only(right: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 8,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AslanYorum()));
                              },
                              child: Ink.image(
                                  image: const AssetImage(
                                    'assets/leo.png',
                                  ),
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(width: 30),
                          Text('LEO',
                              style: GoogleFonts.pacifico(
                                  fontSize: 16, color: Colors.white)),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 8,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const KocYorum()));
                              },
                              child: Ink.image(
                                  image: const AssetImage(
                                    'assets/aries.png',
                                  ),
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(width: 30),
                          Text('ARI',
                              style: GoogleFonts.pacifico(
                                  fontSize: 16, color: Colors.white)),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 8,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AkrepYorum()));
                              },
                              child: Ink.image(
                                  image: const AssetImage(
                                    'assets/scorpio.png',
                                  ),
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text('SCO',
                              style: GoogleFonts.pacifico(
                                  fontSize: 16, color: Colors.white)),
                          const SizedBox(width: 30)
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.only(right: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 8,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const OglakYorum()));
                              },
                              child: Ink.image(
                                  image: const AssetImage(
                                    'assets/capricorn.png',
                                  ),
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(width: 30),
                          Text('CAP',
                              style: GoogleFonts.pacifico(
                                  fontSize: 16, color: Colors.white)),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 8,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TeraziYorum()));
                              },
                              child: Ink.image(
                                  image: const AssetImage(
                                    'assets/libra.png',
                                  ),
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(width: 30),
                          Text('LIB',
                              style: GoogleFonts.pacifico(
                                  fontSize: 16, color: Colors.white)),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 8,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const YayYorum()));
                              },
                              child: Ink.image(
                                  image: const AssetImage(
                                    'assets/sagittarius.png',
                                  ),
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(width: 35),
                          Text('SAG',
                              style: GoogleFonts.pacifico(
                                  fontSize: 16, color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.only(right: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 8,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BogaYorum()));
                              },
                              child: Ink.image(
                                  image: const AssetImage(
                                    'assets/taurus.png',
                                  ),
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(width: 30),
                          Text('TAU',
                              style: GoogleFonts.pacifico(
                                  fontSize: 15, color: Colors.white)),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 8,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const YengecYorum()));
                              },
                              child: Ink.image(
                                  image: const AssetImage(
                                    'assets/cancer.png',
                                  ),
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(width: 30),
                          Text('CAN',
                              style: GoogleFonts.pacifico(
                                  fontSize: 16, color: Colors.white)),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 8,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BasakYorum()));
                              },
                              child: Ink.image(
                                  image: const AssetImage(
                                    'assets/virgo.png',
                                  ),
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text('VIR',
                              style: GoogleFonts.pacifico(
                                  fontSize: 16, color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.only(right: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 8,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BalikYorum()));
                              },
                              child: Ink.image(
                                  image: const AssetImage(
                                    'assets/pisces.png',
                                  ),
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(width: 49),
                          Text('PIS',
                              style: GoogleFonts.pacifico(
                                  fontSize: 16, color: Colors.white)),
                        ],
                      ),
                      const SizedBox(width: 27),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 8,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const IkizlerYorum()));
                              },
                              child: Ink.image(
                                  image: const AssetImage(
                                    'assets/gemini.png',
                                  ),
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text('GEM',
                              style: GoogleFonts.pacifico(
                                  fontSize: 16, color: Colors.white)),
                        ],
                      ),
                      const SizedBox(width: 35),
                      Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 8,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const KovaYorum()));
                              },
                              child: Ink.image(
                                  image: const AssetImage(
                                    'assets/aquarius.png',
                                  ),
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text('AQU',
                              style: GoogleFonts.pacifico(
                                  fontSize: 16, color: Colors.white)),
                          const SizedBox(),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                    '      Choose your horoscope or\n if you want know your horoscope,\n       choose your date of birth',
                    style: GoogleFonts.pacifico(
                        fontSize: 26, color: Colors.white)),
                const SizedBox(height: 30),
                _DateTime(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.blueGrey,
          style: TabStyle.flip,
          items: [
            TabItem(
                icon: IconButton(
                  icon: const Icon(Icons.home, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FirstPage()));
                  },
                ),
                title: 'Home'),
            TabItem(
                icon: IconButton(
                  icon: const Icon(Icons.dashboard, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ButtonPage()));
                  },
                ),
                title: 'Horoscopes'),
            TabItem(
                icon: IconButton(
                  icon: const Icon(Icons.people_alt, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FriendsPageWidget()));
                  },
                ),
                title: 'Friends'),
            TabItem(
                icon: IconButton(
                  icon: const Icon(Icons.person, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreen()));
                  },
                ),
                title: 'Profile')
          ],
          initialActiveIndex: 1,
          // ignore: avoid_print
          onTap: (int i) => print('click index =$i'),
        ));
  }
}

class _DateTime extends StatefulWidget {
  @override
  State<_DateTime> createState() => _DateTimeState();
}

class _DateTimeState extends State<_DateTime> {
  static final TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 70,
      width: 300,
      decoration: const BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20))),
      child: Row(
        children: [
          const SizedBox(width: 25),
          SizedBox(
            height: 70,
            width: 140,
            child: TextField(
              controller: _date,
              decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today_rounded, color: Colors.white),
                  labelText: "Select Date"),
              onTap: () async {
                DateTime? pickeddate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101));
                if ((pickeddate != null)) {
                  setState(() {
                    _date.text = DateFormat('yyyy-MM-dd').format(pickeddate);
                    // ignore: avoid_print
                    print(_date.text);
                  });
                }
              },
            ),
          ),
          const SizedBox(width: 25),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black54,
                  side: const BorderSide(color: Colors.white),
                  backgroundColor: Colors.blueGrey,
                  shadowColor: Colors.white),
              onPressed: () {
                functionMessage(context);
              },
              child:
                  const Text('Submit', style: TextStyle(color: Colors.white)))
        ],
      ),
    );
  }
}

// Functions -> Routes
void functionMessage(BuildContext context) {
  var stringDate = (_DateTimeState._date.text);
  var intDateMonth = int.tryParse(stringDate.toString().substring(5, 7));
  var intDateDay = int.tryParse(stringDate.toString().substring(8, 10));
  if ((intDateMonth == 7 && intDateDay! >= 24) ||
      (intDateMonth == 8 && intDateDay! <= 21)) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const AslanYorum()));
  } else if ((intDateMonth == 3 && intDateDay! >= 21) ||
      (intDateMonth == 4 && intDateDay! <= 20)) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const KocYorum()));
  } else if ((intDateMonth == 10 && intDateDay! >= 24) ||
      (intDateMonth == 11 && intDateDay! <= 23)) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const AkrepYorum()));
  } else if ((intDateMonth == 12 && intDateDay! >= 23) ||
      (intDateMonth == 1 && intDateDay! <= 20)) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const OglakYorum()));
  } else if ((intDateMonth == 9 && intDateDay! >= 24) ||
      (intDateMonth == 10 && intDateDay! <= 23)) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const TeraziYorum()));
  } else if ((intDateMonth == 11 && intDateDay! >= 24) ||
      (intDateMonth == 12 && intDateDay! <= 22)) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const YayYorum()));
  } else if ((intDateMonth == 4 && intDateDay! >= 21) ||
      (intDateMonth == 5 && intDateDay! <= 21)) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const BogaYorum()));
  } else if ((intDateMonth == 6 && intDateDay! >= 22) ||
      (intDateMonth == 7 && intDateDay! <= 23)) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const YengecYorum()));
  } else if ((intDateMonth == 8 && intDateDay! >= 22) ||
      (intDateMonth == 9 && intDateDay! <= 23)) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const BasakYorum()));
  } else if ((intDateMonth == 2 && intDateDay! >= 20) ||
      (intDateMonth == 3 && intDateDay! <= 20)) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const BalikYorum()));
  } else if ((intDateMonth == 1 && intDateDay! >= 21) ||
      (intDateMonth == 2 && intDateDay! <= 19)) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const KovaYorum()));
  }
}
