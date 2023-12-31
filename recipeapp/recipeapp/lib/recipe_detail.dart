import 'package:flutter/material.dart';
import 'package:recipeapp/recipe.dart';


class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key,required this.recipe}): super(key: key);

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300.0,
              width: double.infinity,
              child: Image.asset(widget.recipe.imageUrl),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18.0),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (context, index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text(
                    '${ingredient.quantity * _sliderVal} ${ingredient.measure} ${ingredient.name}',
                    style: const TextStyle(fontSize: 16.0),
                  );
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderVal * widget.recipe.servings} servings',
              value: _sliderVal.toDouble(),
              onChanged: (value) {
                setState(() {
                  _sliderVal = value.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}