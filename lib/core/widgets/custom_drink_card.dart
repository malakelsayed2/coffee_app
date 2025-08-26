import 'package:flutter/material.dart';

class CustomDrinkCard extends StatelessWidget {
  const CustomDrinkCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                8,
              ), // small curve (almost rectangular)
            ),
            elevation: 4, // shadow depth
            child: Container(
              padding: EdgeInsetsGeometry.only(left: 40),
              width: 400,
              height: 200,
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 270,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Title" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold) , textAlign: TextAlign.left), Text("Subtitle" , textAlign: TextAlign.left,)],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 35,
          child: Container(
            height: 40,
            width: 90,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 30,
                  offset: Offset(0, 5),
                ),
              ],
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        Positioned(
          top: -5,
          bottom: 60,
          left: 25,
          child: Image(
            image: AssetImage("assets/images/Banana.png"),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: 50,
            right: 25,
            child: Icon(Icons.arrow_forward , size: 30, color: Colors.black45,)
        ),
      ],
    );
  }
}
