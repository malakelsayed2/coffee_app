import 'package:flutter/material.dart';

class CustomTempToggleButton extends StatefulWidget {

   int selectedTemp ;
   CustomTempToggleButton({super.key, required this.selectedTemp});

  @override
  _CustomTempToggleButtonState createState() => _CustomTempToggleButtonState();
}

class _CustomTempToggleButtonState extends State<CustomTempToggleButton> {
  List<String> cupTemp = ["Hot", "Cold"];
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 10,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            40,
          ), // small curve (almost rectangular)
        ),
        elevation: 4, // shadow depth
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.black12,
          ),
          width: 200,
          height: 50,
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(2, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    widget.selectedTemp = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: widget.selectedTemp == index
                        ? Colors.white
                        : Colors.transparent,
                  ),
                  width: 90,
                  height: 45,
                  child: Text(
                    cupTemp[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
