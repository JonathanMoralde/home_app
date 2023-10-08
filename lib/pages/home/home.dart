import 'package:flutter/material.dart';
import 'package:home_app/widgets/bottomBar.dart';
import 'package:home_app/widgets/catBox.dart';
import 'package:home_app/widgets/categoryBox.dart';
import 'package:home_app/widgets/news.dart';
import 'package:home_app/widgets/searchPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
          child: const Text("At-Home Convenience"),
        ),
        backgroundColor: Color(0xFF96CAE6),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return SearchPage();
                  }),
                );
              },
              icon: const Icon(Icons.search),
            ),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: 310,
                child: Text(
                  "What's New?",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 36.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      NewsBox(),
                      const SizedBox(
                        width: 10,
                      ),
                      NewsBox()
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 310,
                child: Text(
                  "Explore Services",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 32, right: 16, top: 16, bottom: 16),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    CatBox(catName: "Electrician", imgName: "1.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    CatBox(catName: "Plumber", imgName: "2.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    CatBox(catName: "Body Groomer", imgName: "3.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    CatBox(catName: "Handyman", imgName: "4.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    CatBox(catName: "Cleaning", imgName: "5.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    CatBox(catName: "Technician", imgName: "6.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    CatBox(catName: "Greenscaping", imgName: "7.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    CatBox(catName: "Pet Care", imgName: "8.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    // CategoryBox(
                    //   catName: "Electrician",
                    //   imgName: "1.png",
                    // ),
                    // const SizedBox(height: 10),
                    // CategoryBox(
                    //   catName: "Plumber",
                    //   imgName: "2.png",
                    // ),
                    // const SizedBox(height: 10),
                    // CategoryBox(
                    //   catName: "Body Groomer",
                    //   imgName: "3.png",
                    // ),
                    // const SizedBox(height: 10),
                    // CategoryBox(
                    //   catName: "Handyman",
                    //   imgName: "4.png",
                    // ),
                    // const SizedBox(height: 10),
                    // CategoryBox(
                    //   catName: "Cleaning",
                    //   imgName: "5.png",
                    // ),
                    // const SizedBox(height: 10),
                    // CategoryBox(
                    //   catName: "Technician",
                    //   imgName: "6.png",
                    // ),
                    // const SizedBox(height: 10),
                    // CategoryBox(
                    //   catName: "Greenscaping",
                    //   imgName: "7.png",
                    // ),
                    // const SizedBox(height: 10),
                    // CategoryBox(
                    //   catName: "Pet Care",
                    //   imgName: "8.png",
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff96CAE6),
        foregroundColor: Colors.black,
        onPressed: () {},
        child: Icon(
          Icons.home,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
