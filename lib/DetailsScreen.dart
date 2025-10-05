import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  DetailsScreen({super.key, required this.title});

  final Map<String, Map<String, List<String>>> recipeDetails = {
    'Bagel Sandwich': {
      'ingredients': [
        '• 1 Bagel',
        '• 2 Eggs',
        '• Turkey Bacon',
        '• Cheese (optional)',
      ],
      'instructions': [
        '1. Toast the bagel',
        '2. Scramble eggs',
        '3. Cook turkey bacon',
        '3. Add cheese (optional)',
        '4. Put together the sandwich',
      ],
    },
    'Peanut Butter & Jelly': {
      'ingredients': ['• 2 Slices bread', '• Peanut butter', '• Jelly'],
      'instructions': [
        '1. Spread peanut butter on one slice',
        '2. Spread jelly on other slice',
        '3. Put together the sandwich',
      ],
    },
    'Grilled Cheese': {
      'ingredients': ['• 2 Slices bread', '• 2 Cheese slices', '• Butter'],
      'instructions': [
        '1. Butter the bread',
        '2. Place buttered side down on pan',
        '3. Add cheese on top',
        '4. Place other bread on top, buttered side up',
        '5. Cover pan with lid to melt cheese',
        '6. Flip the sandwich until both sides are golden brown',
        '7. Serve',
      ],
    },
  };

  @override
  Widget build(BuildContext context) {
    final recipe = recipeDetails[title]!;

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple, title: Text(title)),
      body: Padding(
        // displaying ingredients and instructions
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ingredients:',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              recipe['ingredients']!.join('\n'),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            const Text(
              'Instructions:',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              recipe['instructions']!.join('\n'),
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
