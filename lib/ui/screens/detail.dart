import 'package:flutter/material.dart';

import 'package:just_the_recipev3/model/recipe.dart';
import 'package:just_the_recipev3/ui/widgets/recipe_title.dart';
import 'package:just_the_recipev3/model/state.dart';
import 'package:just_the_recipev3/ui/widgets/recipe_image.dart';

class DetailScreen extends StatefulWidget {
  final Recipe recipe;
  final bool inFavorites;

  DetailScreen(this.recipe, this.inFavorites);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  late bool _inFavorites;
  late StateModel appState;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollController = ScrollController();
    _inFavorites = widget.inFavorites;
  }

  @override
  void dispose() {
    // "Unmount" the controllers:
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerViewIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RecipeImage(widget.recipe.imageURL),
                      RecipeTitle(widget.recipe, 20.0),
                    ],
                  ),
                ),
              ),
              expandedHeight: 340.0,
              pinned: true,
              floating: true,
              elevation: 2.0,
              forceElevated: innerViewIsScrolled,

              bottom: TabBar(
                tabs: const <Widget>[
                  Tab(text: "Home"),
                  Tab(text: "Preparation"),
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            IngredientsView(widget.recipe.ingredients),
            PreparationView(widget.recipe.preparation),
          ],
        ),
      ),
    );
  }
}



class IngredientsView extends StatelessWidget {
  final List<String> ingredients;

  const IngredientsView(this.ingredients);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[];
    ingredients.forEach((item) {
      children.add(
        Row(
          children: <Widget>[
            const Icon(Icons.done),
            const SizedBox(width: 5.0),
            Expanded(child:Text(item),)
          ],
        ),
      );
      // Add spacing between the lines:
      children.add(
        const SizedBox(
          height: 5.0,
        ),
      );
    });
    return ListView(
      padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 75.0),
      children: children,
    );
  }
}

class PreparationView extends StatelessWidget {
  final List<String> preparationSteps;

  const PreparationView(this.preparationSteps);

  @override
  Widget build(BuildContext context) {
    List<Widget> textElements = <Widget>[];
    preparationSteps.forEach((item) {
      textElements.add(
        Text(item),
      );
      // Add spacing between the lines:
      textElements.add(
        const SizedBox(
          height: 10.0,
        ),
      );
    });
    return ListView(
      padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 75.0),
      children: textElements,
    );
  }
}