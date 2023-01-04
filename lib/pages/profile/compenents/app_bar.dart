import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Appbartheme extends StatelessWidget {
  const Appbartheme({super.key});

  @override
  Widget build(BuildContext context) {
    return const appbar();
  }
}

class appbar extends StatefulWidget {
  const appbar({
    Key? key,
  }) : super(key: key);

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
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
    );
  }
}
