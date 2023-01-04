import 'package:flutter/material.dart';
import 'package:test_1/pages/friends/compenents/firends_user.dart';
import 'package:test_1/pages/friends/compenents/firends_selfpage.dart';
class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final controller = TextEditingController();
  List<User> users = allUsers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(  extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.1,
        title: const Text('My Friends',style: TextStyle(color: Colors.black54),),
      ),
      body: Container(decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [  0.3],
              colors: [  Colors.white]),
            ),
        child: Column(
          children: [
            const SizedBox(height: 90),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.blue))),
                onChanged: searchUser,
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      return Card(
                        child: ListTile(
                            leading: Image.network(
                              user.urlImage,
                              fit: BoxFit.cover,
                              width: 50,
                              height: 50,
                            ),
                            title: Text(user.name),
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserPage(user: user,)))),
                      );
                    }))
          ],
        ),
      ),
    );
  }

  void searchUser(String query) {
    final suggestions = allUsers.where((user) {
      final userName = user.name.toLowerCase();
      final input = query.toLowerCase();

      return userName.contains(input);
    }).toList();

    setState(() => users = suggestions);
  }
}
