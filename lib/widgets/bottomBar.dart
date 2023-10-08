import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    // final bottomNavigationBarItems = <BottomNavigationBarItem>[
    // BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    //   BottomNavigationBarItem(
    //       icon: Icon(Icons.notifications), label: "Notifications"),
    //   BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Messages"),
    //   BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
    //   BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
    // ];

    return const BottomAppBar(
      notchMargin: 5.0,
      shape: CircularNotchedRectangle(),
      color: Color(0xff96CAE6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 20, top: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.notifications,
                  size: 30,
                ),
                // Text(
                //   "Notifications",
                //   style: TextStyle(fontSize: 12),
                // )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.messenger,
                  size: 30,
                ),
                // Text(
                //   "Messages",
                //   style: TextStyle(fontSize: 12),
                // )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.favorite,
                  size: 30,
                ),
                // Text(
                //   "Favorites",
                //   style: TextStyle(fontSize: 12),
                // )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, bottom: 20, top: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.person,
                  size: 30,
                ),
                // Text(
                //   "Account",
                //   style: TextStyle(fontSize: 12),
                // )
              ],
            ),
          ),
        ],
      ),
    );

    // BottomNavigationBar(
    //   type: BottomNavigationBarType.fixed,
    //   // showSelectedLabels: false,
    //   // showUnselectedLabels: false,
    //   backgroundColor: Color(
    //       0xff96CAE6), // Make the background of the BottomNavigationBar transparent
    //   items: bottomNavigationBarItems,
    // );
  }
}
