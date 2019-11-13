# prompt = TTY::Prompt.new
require 'pry'

def welcome
  puts "Welcome to Marija and Eunice's Recipe App!"
  puts "
        $$  $$  $$
      __||__||__||__
    | * * * * * * *|
    |* * * * * * * |
    | * * * * * * *|
    |______________|" #entry point
    help
end

def help
  help = <<-HELP
    
  Please type one of the following:
    - Recipes : displays all the recipes
    - Ingredients : displays a list of ingredients to choose from
    - Exit : exits the app
    HELP
  puts help
  run
end

def options
  options = <<-OPTIONS
  
  Please type one of the following:
  - Ingredients : displays the ingredients needed for the recipe
  - Calories : displays the calories for the recipe
  - Servings : displays the ingredients needed for the recipe
  - Both : Calories and serving size
  - Main Menu : go back to main menu
  OPTIONS
  puts options
end

def options_for_ingredients
  options2 = <<-OPTIONS2
  
  Please type one of the following:
  - Directions : displays the recipe directions
  - Main Menu : go back to main menu
  OPTIONS2
  puts options2
end

def recipe_submenu
  list_recipes
  puts "Please type the number of the recipe to see the directions:"
    user_input = gets.chomp
    if (user_input.to_i) <= Recipe.all.count
      chosen_recipe = Recipe.all[user_input.to_i - 1]
      puts chosen_recipe.directions
    else
      puts "Invalid input, please try again."
    end
    options
    recipe_detail_menu(chosen_recipe)
  end

def ingredient_for_recipe(recipe)
  # user_input = gets.chomp
  recipe_search = IngredientRecipe.all.select do |ingredientrecipe|
    ingredientrecipe.recipe.name.downcase
  end
    recipe_search.each do |recipesearch|
      puts recipesearch.ingredient.name
    end
end
#gives us all the ingredients
#we need just the ingredients for the chosen recipe

def recipe_detail_menu(recipe)
  command = gets.downcase.strip
case command
  when 'ingredients'
    puts "Ingredients needed: #{ingredient_for_recipe(recipe)}"
    help
  when 'calories'
    puts "Calories #{recipe.calories}"
    help
  when 'servings'
    puts "Servings #{recipe.servings}"
    help
  when 'both'
    puts "Calories #{recipe.calories}"
    puts "Servings #{recipe.servings}"
    help
  when 'main menu'
    help
  when 'exit'
    exit_app
  else
    options
  end
end

def list_recipes
  Recipe.all.each_with_index {|recipe, index|
  puts "#{index+1}. #{recipe.name}"}
end

def ingredient_submenu
  list_ingredients
  puts "Please type the ingredient to find recipes:"
    user_input = gets.chomp
      ingredient_search = IngredientRecipe.all.select do |ingredientrecipe|
        ingredientrecipe.ingredient.name.downcase == user_input.downcase
      end
      ingredient_search.each do |ingredientsearch|
        puts ingredientsearch.recipe.name
      end
    options_for_ingredients
    
end
# if ingredient doesnt exist conditional

def list_ingredients
  Ingredient.all.each_with_index {|ingredient, index|
    puts "#{index+1}. #{ingredient.name}"}
end

# def recipe_detail_menu(recipe)
#   command = gets.downcase.strip
# case command
#   when 'ingredients'
#     puts "Ingredients needed: #{ingredient_for_recipe(recipe)}"
#     help
#   when 'calories'
#     puts "Calories #{recipe.calories}"
#     help
#   when 'servings'
#     puts "Servings #{recipe.servings}"
#     help
#   when 'both'
#     puts "Calories #{recipe.calories}"
#     puts "Servings #{recipe.servings}"
#     help
#   when 'main menu'
#     help
#   when 'exit'
#     exit_app
#   else
#     options
#   end
# end




def exit_app
  puts "Thank you for using our app. Goodbye!"
end

def run
  command = gets.downcase.strip
    puts "Please enter a command:"
  case command
    when 'recipes'
     recipe_submenu
    when 'ingredients'
      ingredient_submenu
    when 'exit'
      exit_app
    else
      help
    end
end
