import 'package:flutter/material.dart';

import '../resources/Models/size_manager.dart';

class CustomDrinkCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String description;
  final String price ;

  const CustomDrinkCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.description, required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: PaddingSize.pad15, vertical: PaddingSize.pad30),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                Radius.rad8,
              ), // small curve (almost rectangular)
            ),
            elevation: 4, // shadow depth
            child: Container(
              padding: EdgeInsetsGeometry.only(left: PaddingSize.pad40),
              width: Width.w400,
              height: Height.h200,
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: Width.w270,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: FontSize.f25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(description, textAlign: TextAlign.left),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: Position.p50 ,
          left: Position.p35,
          child: Container(
            height: Height.h40,
            width: Width.w90,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 30,
                  offset: Offset(-5, -10),
                ),
              ],
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        Positioned(
          top: -Position.p10,
          bottom: Position.p70,
          left: Position.p25,
          child: Image(image: AssetImage(imagePath), fit: BoxFit.cover),
        ),
        Positioned(
          top: Position.p50,
          right: Position.p40,
          child: Icon(Icons.arrow_forward, size: FontSize.f30, color: Colors.black45),
        ),
      ],
    );
  }
}
