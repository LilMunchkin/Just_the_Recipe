import 'package:flutter/material.dart';

import 'package:just_the_recipev3/model/recipe.dart';
import 'package:just_the_recipev3/ui/widgets/recipe_title.dart';
import 'package:just_the_recipev3/ui/widgets/recipe_image.dart';
import 'package:just_the_recipev3/ui/screens/detail.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  final bool inFavorites;
  final Function onFavoriteButtonPressed;

  const RecipeCard(
      {super.key,
        required this.recipe,
        required this.inFavorites,
        required this.onFavoriteButtonPressed});

  @override
  Widget build(BuildContext context) {
    RawMaterialButton _buildFavoriteButton() {
      return RawMaterialButton(
        constraints: const BoxConstraints(minWidth: 40.0, minHeight: 40.0),
        onPressed: () => onFavoriteButtonPressed(recipe.id),
        elevation: 2.0,
        fillColor: Colors.white,
        shape: const CircleBorder(),
        child: Icon(
          // Conditional expression:
          // show "favorite" icon or "favorite border" icon depending on widget.inFavorites:
          inFavorites == true ? Icons.favorite : Icons.favorite_border,
          color: Theme.of(context).iconTheme.color,
        ),
      );
    }

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => new DetailScreen(recipe, inFavorites),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // We overlap the image and the button by
              // creating a Stack object:
              Stack(
                children: <Widget>[
                  RecipeImage(recipe.imageURL),
                  Positioned(
                    top: 2.0,
                    right: 2.0,
                    child: _buildFavoriteButton(),
                  ),
                ],
              ),
              RecipeTitle(recipe, 15),
            ],
          ),
        ),
      ),
    );
  }
}