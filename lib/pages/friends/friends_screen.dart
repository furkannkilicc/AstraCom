import 'package:flutter/material.dart';
import 'package:test_1/pages/friends/compenents/friends_add.dart';

import 'package:test_1/pages/friends/compenents/friends_searchbar.dart';
class FriendsPageWidget extends StatefulWidget {
  const FriendsPageWidget({super.key});

  @override
  State<FriendsPageWidget> createState() => _FriendsPageWidgetState();
}

class _FriendsPageWidgetState extends State<FriendsPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Scaffold(
            backgroundColor: Colors.white,
            body: SearchBar()),
            AddButton()
      ],
    );
  }
}
