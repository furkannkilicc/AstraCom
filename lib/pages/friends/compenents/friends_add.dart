import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});


  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.9, -0.9),
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(blurRadius: 4, color: Colors.black54, spreadRadius: 2)
            ]),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular((50)),
                side: const BorderSide(color: Colors.white)),
          ),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 24,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
