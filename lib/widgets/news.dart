import 'package:flutter/material.dart';

class NewsBox extends StatelessWidget {
  const NewsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      decoration: BoxDecoration(
          color: Color(0xFF96CAE6), borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Text("Content Here"),
      ),
    );
  }
}
