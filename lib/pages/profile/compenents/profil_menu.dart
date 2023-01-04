import 'package:flutter/material.dart';

class ProfileMenu extends StatefulWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final IconData icon;

  @override
  State<ProfileMenu> createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: const Color(0xFFF5F6F9),
            padding: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: () {},
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(
              widget.icon,
              color: Colors.blueGrey,
            ),
            // ignore: prefer_const_constructors
            SizedBox(width: 20),
            Expanded(
              child: Text(
                widget.text,
                style: const TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16,
                ),
              ),
            ),
            const Icon(Icons.keyboard_arrow_right_sharp)
          ],
        ),
      ),
    );
  }
}
