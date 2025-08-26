import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomItemCounter extends StatefulWidget {

  int itemCounter ;
  CustomItemCounter({super.key, required this.itemCounter});

  @override
  _CustomItemCounterState createState() => _CustomItemCounterState();
}

class _CustomItemCounterState extends State<CustomItemCounter> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      right: 10,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        elevation: 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          width: 200,
          height: 50,
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    if(widget.itemCounter == 0){
                      widget.itemCounter = 0 ;
                    }
                    else{
                      widget.itemCounter -- ;
                    }
                  });
                },
                child: Icon(CupertinoIcons.minus, color: Colors.black),
              ),
              Text(widget.itemCounter.toString(), style : TextStyle(fontSize: 20, color: Colors.black , fontWeight: FontWeight.bold) ,),
              TextButton(
                onPressed: () {
                  setState(() {
                    widget.itemCounter++ ;
                  });
                },
                child: Icon(CupertinoIcons.plus, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
