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
    
  Please choose one of the following:
    - Recipes : displays all the recipes
    - Ingredients : displays a list of ingredients to choose from
    - Blank :
    - Exit : exits the app
    HELP
  puts help
  run
end

def options
  options = <<-OPTIONS
  
  Please choose one of the following:
  - Calories : displays the calories for the recipe
  - Serving : displays the ingredients needed for the recipe
  - Both : Calories and serving size
  - Main Menu : go back to main menu
  OPTIONS
  puts options
  #run
end

# def accept_input
#   puts "Please enter a number:"
#   user_response = gets.downcase.chomp
#   return user_response
# end

# def recipe_submenu
#   list_recipes
#   puts "Please select a recipe:"
#     user_input = gets.chomp
#     if (user_input.to_i) <= Recipe.all.count
#       puts Recipe.all.slice((user_input.to_i)-1).directions
#     else
#       puts "Invalid input, please try again."
#     end
#     options
#   #  help
# end

def recipe_submenu
  list_recipes
  puts "Please select a recipe to see the directions:"
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

def recipe_detail_menu(recipe)
  command = gets.downcase.strip
case command
  when 'calories'
    puts recipe.calories
    help
  when 'servings'
    puts recipe.servings
    help
  when 'both'
    puts recipe.calories
    puts recipe.servings
    help
  when 'main menu'
    help
  else
    options
  end
end

def list_recipes
  Recipe.all.each_with_index {|recipe, index|
  puts "#{index+1}. #{recipe.name}"}
end


# def calories
#   Recipe.all.find do |recipe|
#   puts recipe.calories
#   end
# end


def ingredient_submenu
  list_ingredients
  puts "Please type the ingredient to find recipes:"
    user_input = gets.chomp
    # if (user_input) IngredientRecipe.all.count
      ingredient_search = IngredientRecipe.all.select do |ingredientrecipe|
        ingredientrecipe.ingredient.name.downcase == user_input.downcase
      end
  # binding.pry
      ingredient_search.each do |ingredientsearch|
        puts ingredientsearch.recipe.name
      end
    # else
      # puts "Invalid input, please try again."
    # end
    help
end
# if ingredient doesnt exist conditional

def list_ingredients
  Ingredient.all.each_with_index {|ingredient, index|
    puts "#{index+1}. #{ingredient.name}"}
end

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
