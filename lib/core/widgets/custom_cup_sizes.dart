import 'package:flutter/material.dart';

class CustomCupSizes extends StatefulWidget {
  int selectedSize ;
  CustomCupSizes({super.key, required this.selectedSize});

  @override
  _CustomCupSizesState createState() => _CustomCupSizesState();
}

class _CustomCupSizesState extends State<CustomCupSizes> {
  List<String> cupSizes = ["S", "M", "L"];
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 150,
      child: SizedBox(
        width: 450,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(3, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  widget.selectedSize = index;
                });
              },
              child: CircleAvatar(
                backgroundColor: widget.selectedSize == index
                    ? Colors.orangeAccent
                    : Colors.black12,
                radius: 25,
                child: Text(
                  cupSizes[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: widget.selectedSize == index
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
