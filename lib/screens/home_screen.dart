import 'dart:math';

import 'package:coffee_app/core/resources/Models/list_manager.dart';
import 'package:coffee_app/core/resources/Models/route_manager.dart';
import 'package:coffee_app/core/resources/Models/size_manager.dart';
import 'package:coffee_app/core/widgets/custom_drink_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: Height.h100),
          Expanded(
            child: ListView.separated(
              controller: controller,
              itemBuilder: (context, index) {
                return AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) {
                    double offset = 0;
                    if (controller.hasClients) {
                      offset = controller.offset / 100 - index;
                    }
                    offset = offset.clamp(0, 1);
                    return Transform.scale(
                      scale: 1 - (offset * 0.2),
                      child: GestureDetector(
                        onTap: () => Navigator.pushReplacementNamed(context, RouteStringManager.drinkDetailsScreen),
                        child: CustomDrinkCard(
                          imagePath: DrinkCardModel.drinks[index].imagePath,
                          name: DrinkCardModel.drinks[index].name,
                          description: DrinkCardModel.drinks[index].description,
                        ),
                      ),
                    );
                  },
                );
              },
              separatorBuilder: (context, index) => Container(),
              itemCount: DrinkCardModel.drinks.length,
            ),
          ),
        ],
      ),
    );
  }
}
