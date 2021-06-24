

import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../dummy_data.dart';


class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final List<Meal> categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.id== mealId;
    }).toList();

    print('the first meal is ${categoryMeals[0]}');

    return Scaffold(
      appBar: AppBar(
        title: Text('${mealId}'),
      ),
      body: Text('the meal!..${mealId}'),
    );
  }
}
