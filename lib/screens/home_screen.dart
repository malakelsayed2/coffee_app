import 'dart:math';

import 'package:coffee_app/core/widgets/custom_drink_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomDrinkCard(),
      ),
    );
  }
}
