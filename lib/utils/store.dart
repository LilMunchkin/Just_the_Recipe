import 'package:just_the_recipev3/model/recipe.dart';

List<Recipe> getRecipes() {
  return [
    const Recipe(
      id: '0',
      type: RecipeType.drink,
      name: 'Yuja Tea',
      duration: Duration(minutes: 5),
      ingredients: [
        'Equal parts sliced yuja and sugar'
      ],
      preparation: [
        '1. Slice the yuja thinly. Remove as many seeds as you can find. Add to a bowl.',
        '2. Add sugar. Mix.',
        '3. When serving, add a couple tablespoons of yujacha in a cup or glass. Stir with boiling hot water. Serve right away, with a small spoon. You can drink the tea and eat the rinds and pulp with the spoon.',
      ],
      imageURL:
      'https://www.maangchi.com/wp-content/uploads/2015/12/tea-590x332.jpg',
    ),
    const Recipe(
      id: '1',
      type: RecipeType.food,
      name: 'Beef Bone Broth',
      duration: Duration(minutes: 720),
      ingredients: [
        '6 pounds sliced beef leg bones and/or knuckle bones',
      ],
      preparation: [
        '1. Rinse the bones in cold water to remove blood and bone fragments. Place in a large bowl of cold water and soak for 8 hours or overnight. While soaking, change the water a couple of times.',
        '2. Drain the bones and put them into a large stock pot. I use my 10 quart stock pot. Add water until the bones are submerged.',
        '3. Cover and boil for about 20 minutes over high heat, until it is vigorously boiling. You will see lots of floating brownish stuff and fat',
        '4. Remove from the heat. Drain the bones, rinse each bone with cold running water, scrub them (you can wear rubber gloves for this), and drain well.',
        '5. Wash the pot thoroughly and put the bones back to the clean pot.',
        '6. Fill the pot with water (I added 6½ quarts water to my 10 quarts pot). Cover and cook over high heat for about 30 minutes until the water starts boiling.'
        '7. Reduce the heat to low and simmer for 10 hours. Open the lid and stir the bones with a wooden spoon.',
        '8. Fill the pot with water, cover and simmer for 9 hours.',
        '9. Fill the pot with water again. Increase the heat to medium high heat and cook for 1 hour without the lid.',
        '10. Remove from the heat. Let it cool down a little bit until you can handle it.',
        '11. Remove all the bones from the broth and discard.',
        '12. Strain the broth over a large bowl. Discard the strained bits (or you can eat them). You will get about 22 to 24 cups of white milky bone broth.',
        '13. Let the broth cool to room temperature and refrigerate for several hours or overnight until the thick layer of the fat on the surface is solidified. Remove and discard the solid fat.',
        '14. Ladle some hot broth into a bowl and serve with rice, chopped green onion, ground black pepper, kimchi, and other side dishes. When you eat it, add some chopped green onion, ground black pepper, and salt according to your taste, then add some rice and mix it together and eat.'
      ],
      imageURL:
      'https://www.maangchi.com/wp-content/uploads/2021/11/korean-beef-bone-broth-1-620x349.jpg',
    ),
    const Recipe(
      id: '2',
      type: RecipeType.drink,
      name: 'Rice Punch (Sikhye)',
      duration: Duration(minutes: 540),
      ingredients: [
        '18 cups of cold water',
        '8 ounces of barley malt powder',
        '1 cup of rice (210 grams)',
        '1 cup of sugar (optional)',
        'pine nuts, tips removed',
        'jujube, pitted, rolled and sliced',
        '10-cup rice cooker with a warming setting'
      ],
      preparation: [
        '1. Combine the barley malt powder and 14 cups cold water in a  large bowl. Stir well with a whisk or a wooden spoon.',
        '2. Let it sit for 2 to 3 hours until the powder settles on the bottom.',
        '3. Wash the rice, changing the water a couple of times and finally draining as much water as you can.',
        '4. Add ¾ cup water to the rice, put it in the rice cooker, turn it on and start cooking.',
        '5. When the rice is done, add the clear malt water from the bowl by gently pouring it in. Be careful in moving the bowl and pouring, so you don’t disturb the dregs on the bottom.',
        '6. Stir the rice with a wooden spoon and break it up a bit.',
        '7. Set the rice cooker to warm. Let it sit and ferment.',
        '8. Stir the rest of the 4 cups of water into the leftover barley malt sediment. Leave it to sit and settle while the rice ferments in the rice cooker.',
        '9. Open the rice cooker after 4 hours and check to see if some of the rice grains are floating.',
        '10. About dozens grains should be floating. If not floating yet, let it ferment for another hour.',
        '11. Pour the hot sikhye out of the rice cooker into a large pot.'
        '12. Gently pour in the clear malt water that has been separating while the sikhye ferments and discard the sediment. You will get about 3 cups of clear malty water.',
        '13. Cover the pot and bring it to a boil for 10 minutes. Add 1 cup sugar (if used) and mix well.',
        '14. Pour the hot sikhye though a strainer over a large bowl to gather all the rice. Rinse the rice under cold running water and transfer it to an airtight container with some cold water. Cover and refrigerate.',
        '15. Cool the hot sikhye water and transfer to a glass jar. Refrigerate it.',
        '16. When you want to serve, ladle about 1½ cup cold sikhye water to a small bowl and gently stir in about 2 tablespoons rice.',
        '17. Garnish with pine nuts and jujube pieces if you use. Serve with a spoon.'
      ],
      imageURL:
      'https://www.maangchi.com/wp-content/uploads/2009/02/rice-punch-slush-insta-650x650.jpg',
    ),
    const Recipe(
      id: '3',
      type: RecipeType.food,
      name: 'Spicy Seafood Noodle Soup (Jjamppong)',
      duration: Duration(minutes: 40),
      ingredients: [
        '1 ounce of large dried anchovies (about 24 anchovies) with the heads and guts removed',
        '1 piece (about 6×6 inch) dried kelp',
        '12 cups water',
        '1 daepa (large green onion), or 4 green onions, cut into 2 inch length',
        '2 ounces leek, washed and cut into ½ x 2 inch strips',
        '4 ounces bok choy, washed',
        '3 large cabbage leaves (about 3 ounces), cut into bite-size pieces',
        '4 ounces onion, sliced',
        '1 small carrot, peeled and cut into 2-inch strips',
        '8 mussels, scrubbed, debearded, soaked in salted water for a few hours, and washed',
        '4 large shrimp, shelled and deveined',
        '4 ounces squid, just the body with guts removed and sliced into rings',
        '24 small clams (optional), soaked in salted water for a few hours, and washed',
        '4 ounces of thinly sliced beef (or pork or chicken), cut into bite-size pieces',
        '2 bunches (1 pound) fresh or frozen jjajangmyeon noodles, thawed if frozen, and uncoiled',
        '5 tablespoons gochugaru (Korean hot pepper flakes)',
        '1 teaspoon toasted sesame oil',
        '1 tablespoon minced garlic',
        '1 teaspoon minced ginger',
        '¼ cup vegetable oil',
        '1 tablespoon fish sauce',
        '1 teaspoon kosher salt'
      ],
      preparation: [
        '1. Combine the water, anchovies, and kelp in a large pot. Cover, and cook over medium-high heat for 20 minutes.',
        '2. Reduce the heat to low and cook for another 20 minutes.',
        '3. Strain the stock and you will have 8 to 10 cups’ worth. Set aside.',
        '4. Combine 2 tablespoons of hot pepper flakes and 1 teaspoon toasted sesame oil in a small bowl.',
        '5. Mix with a spoon until well incorporated. Set aside.',
        '6. Heat a large wok (or pot) over high heat. Add the vegetable oil, garlic, ginger, and stir about 20 seconds with a wooden spoon until the garlic starts to turn a little crispy.',
        '7. Add the beef and stir until slightly cooked.',
        '8. Clear a spot in the wok by pushing the garlic, ginger, and the meat to the side. Tilt the wok so that the excess vegetable oil slides into the cleared area. Put 3 tablespoons hot pepper flakes into the hot oil and stir and mix with the wooden spoon for about 1 minute, until it creates a smoky flavor but not long enough to burn. Then stir everything in the wok together into the hot oil.',
        '9. Add green onion, leek, cabbage, and onion and stir for 3 to 4 minutes until the vegetables are wilted.',
        '10. Add 6 cups stock and all the seafoods and bok choy. Cover and cook 7 to 8 minutes until the mussels and clams are open and the shrimp and squid are well cooked.',
        '11. Stir in the fish sauce, kosher salt, and the reserved hot pepper flakes mixture. Cover and let it simmer over low heat.',
        '12. Bring a large pot of water to a boil. Add the noodles and stir a few times so that they don’t stick to each other.',
        '13. Cover and cook 5 to 8 minutes until tender but still chewy.',
        '14. Strain and rinse the noodles in cold running water to make them nice and chewy.',
        '15. Heat up the soup over high heat.',
        '16. Divide the noodles into individual serving bowls. Add the soup over top and include cooked seafood, vegetables, meat over top of the noodles. Serve right away.'
      ],
      imageURL:
        'https://www.maangchi.com/wp-content/uploads/2008/11/jjamppong-bokchoy-650x490.jpg',
    ),
    const Recipe(
        id: '4',
        type: RecipeType.food,
        name: 'Braised Pig Trotters (Jokbal)',
        duration: Duration(hours: 15),
        ingredients: [
          '1 large pig trotter',
          '10 cups of water',
          '2 tablespoons of doenjang (Korean fremented soybean paste)',
          '1/4 cup of mirim (cooking wine)',
          '1/3 cup of soysauce',
          '1/4 cup of dark brown sugar (or brown sugar)',
          '1 tablespoon of kosher salt',
          '1/2 cup of ssalyeot (rice syrup)',
          '1 tablespoon peeled ginger, thinly sliced',
          '1 green onion',
          '1/2 teaspoon toasted sesame seeds',
          '1 apple, cleaned, cored, and cut into chunks',
          '8 large jujubes',
          '8 garlic cloves, cut into halves',
          '1 tablespoon peeled ginger, thinly sliced',
          '1 medium onion, cut into chunks',
          '7 to 8 small dried red chili peppers',
          '4 to 5 green onions, cleaned and cut into 2 inches long',
          '1 star anise',
          '1 cinnamon stick',
          '1 teaspoon whole black peppercorns',
          '1 tablespoon ground coffee or instant coffee'
        ],
        preparation: [
          '1. Wash and rinse the pig’s trotter in cold water a couple of times until the water is clear. Fill a large bowl with cold water and soak the pig’s trotter for 12 hours, changing the water 3 to 4 times.',
          '2. Strain and squeeze the pig trotter with both hands in cold water to remove any leftover blood. Squeeze and change the water a few times until no more blood is seen. Drain.',
          '3. Put the cleaned pig’s trotter on your cutting board. Pat dry with a kitchen towel or paper towel and shave any remaining hair with a razor.',
          '4. Bring a large pot of water to a boil (I used my 6½ quart soup pot). Add the pig’s trotter and 1 tablespoon of thinly sliced ginger. Cover and boil for 20 to 25 minutes over medium high heat, until vigorously boiling. You’ll see some dark brownish foam floating around the trotter and the water will look grayish.',
          '5. Remove from the heat. Strain the trotter and wash it in cold water with a kitchen brush. Wash the pot nicely, too. Put the pot back on the stove and put the pig’s trotter inside.',
          '6. Add the ingredients to the pouch, tie the end tightly and add it to the pot next to the clean trotter.',
          '7. Add 10 cups of water to the pot along with doenjang, mirim, soy sauce, dark brown sugar, kosher salt, and rice syrup.',
          '8. Cover and cook 1 hour over medium high heat.',
          '9. Uncover and turn over the trotter. Press the pouch down a couple of times with a wooden spoon.',
          '10. Reduce the heat to medium, cover, and cook another hour.',
          '11. Open and check to see if the meat is well cooked by poking it with a stainless steel chopstick or a long wooden skewer. If it goes through smoothly and the meat is almost falling off the bones, it’s well cooked. If not, cook longer and add more water as needed.',
          '12. Turn up the heat to high heat and cook another 10 minutes with the lid off, ladling broth from the bottom of the pot over top of the trotter. The broth will evaporate a little and the trotter will get browner and shinier.',
          '13. Take out the trotter and put it on the cutting board. Let it cool for 10 to 20 minutes until you can handle it.',
          '14. Combine saeujeot, water, garlic, sugar, hot pepper flakes, ground black pepper, and green onion in a small bowl. Mix it well until the sugar is dissolved.',
          '15. Transfer to a serving bowl and sprinkle with the sesame seeds. Cover and set aside.',
          '16. Slice the meat off the bones and cut it into bite size pieces. Arrange it on a plate and sprinkle chopped green onion and sesame seeds over top. Serve with shrimp dipping sauce. You can add lettuce, sliced raw garlic, green chili pepper, ssamjang, kimchi, and more side dishes.',
        ],
        imageURL: 'https://www.maangchi.com/wp-content/uploads/2017/12/jokbal-korean-braised-pigs-trotters-xxxxxxxxxxxxxxxxxx-wrap-1200x675.jpg'
    ),

  ];
}

List<String> getFavoritesIDs() {
  return [
    '0',
    '2',
    '3',
  ];
}