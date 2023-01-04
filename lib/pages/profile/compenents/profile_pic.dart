import 'package:flutter/material.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 115,
          width: 115,
          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xFF80DEEA),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          color: Color(0xFF80DEEA),
                          spreadRadius: 2)
                    ]),
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/null_profile_pic.png"),
                ),
              ),
              Positioned(
                right: -12,
                bottom: 0,
                child: SizedBox(
                    height: 40,
                    width: 40,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFF80DEEA),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1,
                                color: Color(0xFF80DEEA),
                                spreadRadius: 1)
                          ]),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(8),
                            backgroundColor: const Color.fromARGB(133, 184, 185, 190),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular((50)),
                                side: const BorderSide(color: Colors.white)),
                          ),
                          onPressed: () {},
                          child: const Icon(Icons.camera_alt_outlined)),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
