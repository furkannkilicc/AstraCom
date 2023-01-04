import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_1/main.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
            appBarTheme: const AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        )),
        home: const FirstPage());
  }
}

// use this controller to get what the user typed
final _textController = TextEditingController();
String userPost = '';

final GlobalKey<FormState> formKey = GlobalKey<FormState>();

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.4, 0.6, 0.9],
              colors: [Colors.yellow, Colors.red, Colors.indigo, Colors.teal]),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              right: 120,
              width: 160,
              height: 200,
              top: 65,
              child: Container(
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/logo.png'))),
              )),
          Positioned(
            child: Center(
              child: Text(
                'AstraCom',
                style: GoogleFonts.pacifico(
                    fontSize: 44,
                    textStyle: const TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Positioned(
            top: 400,
            right: 55,
            child: Container(
              height: 240,
              width: 300,
              padding: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: const Color(0xFF80DEEA).withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                        controller: _textController,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: () {
                              _textController.clear();
                            },
                            icon: const Icon(Icons.clear),
                          ),
                          hintText: 'Your Name...',
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z ]+$').hasMatch(value)) {
                            return 'Enter correct name';
                          } else {
                            return null;
                          }
                        }),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          userPost = _textController.text;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ButtonPage()));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan.shade700),
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
