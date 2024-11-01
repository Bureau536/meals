import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_details_item.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({
    super.key,
    required this.title,
    required this.meal,
    required List<Meal> meals,
  });

  final String title;
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Expanded(
        child: MealDetailsItem(
          meal: meal,
        ),
      ),
    );
  }
}
