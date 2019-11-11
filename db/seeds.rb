Ingredient.destroy_all
Recipe.destroy_all
IngredientRecipe.destroy_all


egg = Ingredient.create(name: "Egg")
all_purpose_flour = Ingredient.create(name: "All purpose flour")
sugar = Ingredient.create(name: "Sugar")
brown_sugar = Ingredient.create(name: "Brown sugar")
ground_cinnamon = Ingredient.create(name: "Ground cinnamon")
ground_ginger = Ingredient.create(name: "Ground ginger")
ground_nutmeg = Ingredient.create(name: "Ground nutmeg")
butter = Ingredient.create(name: "Butter")
apple = Ingredient.create(name: "Apple")
lemon_juice = Ingredient.create(name: "Lemon juice")
pie_crust = Ingredient.create(name: "Pie crust")
egg_white = Ingredient.create(name: "Egg white")
pie_crust = Ingredient.create(name: "Pie crust")
egg_white = Ingredient.create(name: "Egg white")
rolled_oats = Ingredient.create(name: "Rolled oats")
baking_soda = Ingredient.create(name: "Baking soda")
salt = Ingredient.create(name: "Salt")
unsalted_butter = Ingredient.create(name: "Unsalted butter")
vanilla_extract = Ingredient.create(name: "Vanilla extract")
granny_smith_apple = Ingredient.create(name: "Granny smith apple")
overripe_banana = Ingredient.create(name: "Overripe banana")
phyllo_dough = Ingredient.create(name: "Phyllo dough")
walnut = Ingredient.create(name: "Walnut")
water = Ingredient.create(name: "Water")
honey = Ingredient.create(name: "Honey")

apple_pie = Recipe.create(name: "Apple Pie", servings: "8 servings",
directions: "1. In a small bowl, combine the sugars, flour and spices; set aside. In a large bowl, toss apples with lemon juice. Add sugar mixture; toss to coat.
2. Line a 9-in. pie plate with bottom crust; trim even with edge. Fill with apple mixture; dot with butter. Roll remaining crust to fit top of pie; place over filling. Trim, seal and flute edges. Cut slits in crust.
3. Beat egg white until foamy; brush over crust. Sprinkle with sugar. Cover edges loosely with foil.
4. Bake at 375° for 25 minutes. Remove foil and bake until crust is golden brown and filling is bubbly, 20-25 minutes longer.
Cool on a wire rack.", calories: 414)

apple_cinnamon_oatmeal_cookies = Recipe.create(name: "Apple Cinnamon Oatmeal Cookies", servings: "19 cookies",
directions: "1. Preheat oven to 350 degrees. Line two 18 by 13-inch baking sheets with silicone baking mats or parchment paper. 
2. In a mixing bowl whisk together flour, oats, cinnamon, baking soda and salt for 20 seconds, set aside.
3. In the bowl of an electric stand mixer fitted with the paddle attachment cream together butter and brown sugar until combined. Mix in egg and vanilla extract.
4. Toss apples with lemon juice in a small bowl. Add flour mixture to egg and vanilla mixture and mix until combined, then mix in apples. 
5. Scoop dough out using a medium cookie scoop, or 2 Tbsp at a time, and drop onto prepared baking sheets spacing cookies 2-inches apart. Flatten them just slightly.
6. Bake one sheet at a time in preheated oven until cookies are set, about 14 - 15 minutes. 
7. Let cool on baking sheet several minutes then transfer to a wire rack to cool completely. Store cookies in an airtight container.",
calories: 134)

banana_walnut_bread = Recipe.create(name: "Banana Walnut Bread", servings: "12 servings",
directions: "1. Preheat oven to 350 degrees F (175 degrees C). Lightly grease a 9x5 inch loaf pan.
2. In a large bowl, combine flour, baking soda and salt. In a separate bowl, cream together butter and brown sugar. Stir in eggs and mashed bananas until well blended. Stir banana mixture into flour mixture; stir just to moisten. Pour batter into prepared loaf pan.
3. Bake in preheated oven for 60 to 65 minutes, until a toothpick inserted into center of the loaf comes out clean. Let bread cool in pan for 10 minutes, then turn out onto a wire rack..", calories: 229)

baklava = Recipe.create(name: "Baklava", servings: "30 pieces",
directions: "1. Thaw phyllo dough according to package instructions (this is best done overnight in the fridge, then place it on the counter for 1 hour before starting your recipe to bring it to room temp).
2. Trim phyllo dough to fit your baking dish. My phyllo package had 2 rolls with a total of 40 sheets that measured 9x14 so I had to trim them slightly. You can trim one stack at a time then cover with a damp towel to keep from drying out.
3. Butter the bottom and sides of a 13x9 non-stick baking pan.
4. Start with your honey sauce (which needs time to cool as baklava bakes).
In a medium saucepan, combine 1 cup sugar, 1/2 cup honey, 2 Tbsp lemon juice, and 3/4 cup water. Bring to a boil over med/high heat, stirring until sugar is dissolved, then reduce heat to med/low and boil additional 4 min without stirring. Remove from heat and let syrup cool while preparing baklava.
5. Pulse walnuts 10 times in a food process or until coarsely ground/ finely chopped. In a medium bowl, stir together: 4 cups finely chopped walnuts and 1 tsp cinnamon.
6. Place 10 phyllo sheets into baking pan one at a time, brushing each sheet with butter once it's in the pan before adding the next (i.e. place phyllo sheet into pan, brush the top with butter, place next phyllo sheet in pan, butter the top, etc. etc.). Keep remaining phyllo covered with a damp towel at all times. Spread about 1/5 of nut mixture (about 3/4 cup) over phyllo dough.
7. Add 5 buttered sheets of phyllo, then another layer of nuts. Repeat x 4. Finish off with 10 layers of buttered phyllo sheets. Brush the very top with butter.
8. Cut pastry into 1 1/2 inches wide strips, then cut diagonally to form diamond shapes. Bake at 325˚F for 1 hour and 15 min or until tops are golden brown.
9. Remove from oven and immediately spoon cooled syrup evenly over the hot baklava (you'll hear it sizzle). This will ensure that it stays crisp rather than soggy. Let baklava cool completely, uncovered and at room temp. For best results, let baklava sit 4-6 hours or overnight at room temperature for the syrup to penetrate and soften the layers. Garnish baklava with finely chopped nuts or drizzle with melted chocolate. Store at room temp, covered with a tea towel for 1 to 2 weeks.",
calories: 255)

# IngredientRecipe.create(ingredient: , recipe: )
IngredientRecipe.create(ingredient: apple, recipe: apple_pie)
IngredientRecipe.create(ingredient: sugar, recipe: apple_pie)
IngredientRecipe.create(ingredient: brown_sugar, recipe: apple_pie)
IngredientRecipe.create(ingredient: all_purpose_flour, recipe: apple_pie)
IngredientRecipe.create(ingredient: ground_cinnamon, recipe: apple_pie)
IngredientRecipe.create(ingredient: ground_ginger, recipe: apple_pie)
IngredientRecipe.create(ingredient: ground_nutmeg, recipe: apple_pie)
IngredientRecipe.create(ingredient: lemon_juice, recipe: apple_pie)
IngredientRecipe.create(ingredient: pie_crust, recipe: apple_pie)
IngredientRecipe.create(ingredient: butter, recipe: apple_pie)
IngredientRecipe.create(ingredient: egg_white, recipe: apple_pie)

IngredientRecipe.create(ingredient: apple, recipe: apple_cinnamon_oatmeal_cookies)
IngredientRecipe.create(ingredient: all_purpose_flour, recipe: apple_cinnamon_oatmeal_cookies)
IngredientRecipe.create(ingredient: rolled_oats, recipe: apple_cinnamon_oatmeal_cookies)
IngredientRecipe.create(ingredient: ground_cinnamon, recipe: apple_cinnamon_oatmeal_cookies)
IngredientRecipe.create(ingredient: baking_soda, recipe: apple_cinnamon_oatmeal_cookies)
IngredientRecipe.create(ingredient: salt, recipe: apple_cinnamon_oatmeal_cookies)
IngredientRecipe.create(ingredient: unsalted_butter, recipe: apple_cinnamon_oatmeal_cookies)
IngredientRecipe.create(ingredient: brown_sugar, recipe: apple_cinnamon_oatmeal_cookies)
IngredientRecipe.create(ingredient: egg, recipe: apple_cinnamon_oatmeal_cookies)
IngredientRecipe.create(ingredient: vanilla_extract, recipe: apple_cinnamon_oatmeal_cookies)
IngredientRecipe.create(ingredient: granny_smith_apple, recipe: apple_cinnamon_oatmeal_cookies)
IngredientRecipe.create(ingredient: lemon_juice, recipe: apple_cinnamon_oatmeal_cookies)

IngredientRecipe.create(ingredient: all_purpose_flour, recipe: banana_walnut_bread)
IngredientRecipe.create(ingredient: baking_soda, recipe: banana_walnut_bread)
IngredientRecipe.create(ingredient: salt, recipe: banana_walnut_bread)
IngredientRecipe.create(ingredient: butter, recipe: banana_walnut_bread)
IngredientRecipe.create(ingredient: brown_sugar, recipe: banana_walnut_bread)
IngredientRecipe.create(ingredient: egg, recipe: banana_walnut_bread)
IngredientRecipe.create(ingredient: overripe_banana, recipe: banana_walnut_bread)
IngredientRecipe.create(ingredient: walnut, recipe: banana_walnut_bread)

IngredientRecipe.create(ingredient: phyllo_dough, recipe: baklava)
IngredientRecipe.create(ingredient: unsalted_butter, recipe: baklava)
IngredientRecipe.create(ingredient: walnut, recipe: baklava)
IngredientRecipe.create(ingredient: ground_cinnamon, recipe: baklava)
IngredientRecipe.create(ingredient: sugar, recipe: baklava)
IngredientRecipe.create(ingredient: lemon_juice, recipe: baklava)
IngredientRecipe.create(ingredient: water, recipe: baklava)
IngredientRecipe.create(ingredient: honey, recipe: baklava)