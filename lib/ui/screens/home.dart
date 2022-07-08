import 'package:flutter/material.dart';

import 'package:just_the_recipev3/model/recipe.dart';
import 'package:just_the_recipev3/model/recipe_card.dart';
import 'package:just_the_recipev3/utils/store.dart';
import 'package:settings_ui/settings_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  // New member of the class:
  List<Recipe> recipes = getRecipes();
  List<String> userFavorites = getFavoritesIDs();

  // New method:
  // Inactive widgets are going to call this method to
  // signalize the parent widget HomeScreen to refresh the list view.
  void _handleFavoritesListChanged(String recipeID) {
    // Set new state and refresh the widget:
    setState(() {
      if (userFavorites.contains(recipeID)) {
        userFavorites.remove(recipeID);
      } else {
        userFavorites.add(recipeID);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // New method:
    Padding _buildRecipes(List<Recipe> recipesList) { // New code
      return Padding( // New code
        // Padding before and after the list view:
        padding: const EdgeInsets.symmetric(vertical: 5.0), // New code
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: recipesList.length,
                itemBuilder: (BuildContext context, int index) {
                  return RecipeCard(
                    recipe: recipesList[index],
                    inFavorites:
                    userFavorites.contains(recipesList[index].id),
                    onFavoriteButtonPressed: _handleFavoritesListChanged,
                  );
                },
              ),
            ),
          ],
        ),
      ); // New code
    }

    Column _buildSettings() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SettingsList(
              sections:[
                SettingsSection(
                  title: Text('General'),
                  tiles:[

                  ]
                )
              ]
          )
        ]
      );
    }

    const double _iconSize = 20.0;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          // We set Size equal to passed height (50.0) and infinite width:
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 2.0,
            bottom: TabBar(
              labelColor: Theme.of(context).indicatorColor,
              tabs: const [
                Tab(icon: Icon(Icons.restaurant, size: _iconSize)),
                Tab(icon: Icon(Icons.local_drink, size: _iconSize)),
                Tab(icon: Icon(Icons.favorite, size: _iconSize)),
                //Tab(icon: Icon(Icons.settings, size: _iconSize)),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: TabBarView(
            // Replace placeholders:
            children: [
              // Display recipes of type food:
              _buildRecipes(recipes
                  .where((recipe) => recipe.type == RecipeType.food)
                  .toList()),
              // Display recipes of type drink:
              _buildRecipes(recipes
                  .where((recipe) => recipe.type == RecipeType.drink)
                  .toList()),
              // Display favorite recipes:
              _buildRecipes(recipes
                  .where((recipe) => userFavorites.contains(recipe.id))
                  .toList()),
              //_buildSettings(),
            ],
          ),
        ),
      ),
    );
  }
}