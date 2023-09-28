import 'package:flutter/material.dart';
import 'package:home_app/widgets/searchPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("At-Home Convenience"),
        backgroundColor: Color(0xFF52A7D7),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return SearchPage();
                }),
              );
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Container(),
    );
  }
}
