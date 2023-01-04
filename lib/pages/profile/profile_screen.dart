import 'package:flutter/material.dart';
import 'compenents/body.dart';



class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent,title: const Text('Profile',style: TextStyle(color: Colors.black54),),
      elevation: 0.1,),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [  0.3],
              colors: [  Colors.white70]),
            ),
        child: const Body(),
      ),
    );
  }
}
