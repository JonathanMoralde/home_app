import 'package:flutter/material.dart';

class CatBox extends StatelessWidget {
  final String catName;
  final String imgName;
  const CatBox({super.key, required this.catName, required this.imgName});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 150,
        height: 165,
        decoration: BoxDecoration(
          color: Color(0xffFBE2AE),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff252525).withOpacity(0.5),
              spreadRadius: 10,
              blurRadius: 5,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                width: double.infinity,
                height: 130,
                child: Image.asset(
                  'lib/images/${imgName}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                catName,
                style: TextStyle(
                    fontFamily: "Poppins",
                    letterSpacing: 1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
