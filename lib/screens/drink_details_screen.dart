import 'package:coffee_app/core/resources/Models/list_manager.dart';
import 'package:coffee_app/core/widgets/custom_cup_shadow.dart';
import 'package:coffee_app/core/widgets/custom_cup_sizes.dart';
import 'package:coffee_app/core/widgets/custom_item_counter.dart';
import 'package:coffee_app/core/widgets/custom_temp_toggle_button.dart';
import 'package:flutter/material.dart';


class DrinkDetailsScreen extends StatefulWidget {
  const DrinkDetailsScreen({super.key});

  @override
  State<DrinkDetailsScreen> createState() => _DrinkDetailsScreenState();
}

class _DrinkDetailsScreenState extends State<DrinkDetailsScreen> {
  final PageController _controller = PageController();
  double currentPage = 0;
  int selectedSize = -1;
  int selectedTemp = -1;
  int itemCounter = 0 ;

  @override
  void initState() {
    _controller.addListener(() {
      currentPage = _controller.page ?? 1;
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: DrinkModel.drinks.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        CustomCupShadow(),
                        Image(
                          image: AssetImage(DrinkModel.drinks[index].imagePath),
                          height: 400,
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
            Positioned(
              left: 15,
              top: 20,
              child: Text(
                DrinkModel.drinks[currentPage.round()].name,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: 15,
              top: 70,
              child: SizedBox(
                width: 400,
                child: Text(
                  DrinkModel.drinks[currentPage.round()].description,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Positioned(
              right: 15,
              top: 20,
              child: Text(
                DrinkModel.drinks[currentPage.round()].price,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            CustomCupSizes(selectedSize: selectedSize),
            CustomTempToggleButton(selectedTemp: selectedTemp),
            CustomItemCounter(itemCounter: itemCounter)
          ],
        ),
      ),
    );
  }
}
