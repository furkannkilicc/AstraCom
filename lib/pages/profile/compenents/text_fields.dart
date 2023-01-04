import 'package:flutter/material.dart';
import 'profil_menu.dart';

class TextFields extends StatefulWidget {
  const TextFields({
    Key? key,
  }) : super(key: key);

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(9, 3, 9, 30),
          child: Container(
            height: 430,
            width: 420,
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
          ),
        ),
        Column(
          children: [
            const SizedBox(height: 20),
            ProfileMenu(press: () {}, text: 'My profile', icon: Icons.person),
            const SizedBox(height: 20),
            ProfileMenu(
                press: () {}, text: 'Notifications', icon: Icons.notifications),
            const SizedBox(height: 20),
            ProfileMenu(press: () {}, text: 'Settings', icon: Icons.settings),
            const SizedBox(height: 20),
            ProfileMenu(press: () {}, text: 'Log Out', icon: Icons.logout),
          ],
        ),
      ],
    );
  }
}
