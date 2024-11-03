import 'package:flutter/material.dart';
import 'package:meals/extentions/iterable_extentions.dart';

class MealSteps extends StatelessWidget {
  const MealSteps({
    super.key,
    required this.steps,
  });

  final List<String> steps;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 5, left: 5),
          child: Text(
            'Cooking steps:',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: steps.mapIndexed((i, step) {
            return MealStepItem(stepNumber: i + 1, step: step);
          }).toList(),
        )
      ],
    );
  }
}

class MealStepItem extends StatelessWidget {
  final String step;
  final int stepNumber;

  const MealStepItem({
    super.key,
    required this.stepNumber,
    required this.step,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$stepNumber. ',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Flexible(
            child: Text(
              step,
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
