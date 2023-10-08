import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  final String catName;
  final String imgName;
  const CategoryBox({super.key, required this.catName, required this.imgName});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 330,
        height: 80,
        decoration: BoxDecoration(color: Color(0xff96CAE6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Text(
                catName,
                style: TextStyle(
                    fontFamily: "Poppins",
                    letterSpacing: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32.0),
              child: Container(
                width: 80,
                height: double.infinity,
                child: Image.asset(
                  'lib/images/${imgName}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
