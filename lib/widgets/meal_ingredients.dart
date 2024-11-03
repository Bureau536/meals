import 'package:flutter/material.dart';

class MealIngredients extends StatelessWidget {
  const MealIngredients({
    super.key,
    required this.ingredients,
  });

  final List<String> ingredients;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 5, left: 5),
          child: Text(
            'Ingredients:',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: ingredients.map((ingredient) {
              return MealIngredientItem(ingredient);
            }).toList(),
          ),
        )
      ],
    );
  }
}

class MealIngredientItem extends StatelessWidget {
  const MealIngredientItem(
    this.ingredient, {
    super.key,
  });

  final String ingredient;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '- ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Flexible(
            child: Text(
              ingredient,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
