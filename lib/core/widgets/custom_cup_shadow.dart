import 'package:flutter/material.dart';

import '../resources/Models/size_manager.dart';

class CustomCupShadow extends StatelessWidget {
  const CustomCupShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 50,
      child: Container(
        height: Height.h40,
        width: 120,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 10,
              color: Colors.black,
              blurRadius: 50,
              offset: Offset(-10, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
