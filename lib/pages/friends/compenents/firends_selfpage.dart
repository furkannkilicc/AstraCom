import 'package:flutter/material.dart';
import 'package:test_1/pages/friends/compenents/firends_user.dart';

class UserPage extends StatelessWidget {
  final User user;
  const UserPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Image.network(user.urlImage,width: double.infinity,height: 300,fit: BoxFit.cover,),
      appBar: AppBar(title: Text(user.name),),
    );
  }
}
