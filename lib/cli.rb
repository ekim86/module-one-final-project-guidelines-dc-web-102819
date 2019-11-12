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
  - Ingredients : displays the ingredients needed for the recipe
  - Exit : go back to main menu
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
  when 'ingredients'
    puts recipe.ingredients.map do |ingredient|
      ingredient.name
    end
  when 'both'
    puts recipe.calories
    puts recipe.ingredients.map do |ingredient|
      ingredient.name
    end
  else
    options
  end
end

  # displays choices for this recipe, including calories and ingredients
# end

def list_recipes
  Recipe.all.each_with_index {|recipe, index|
  puts "#{index+1}. #{recipe.name}"}
end


def calories
  Recipe.all.find do |recipe|
  puts recipe.calories
  end
end


# def ingredient_submenu
#   list_ingredients
#   puts "Please select an ingredient to find recipes:"
#     user_input = gets.chomp
#     if (user_input.to_i) <= Ingredient.all.count
#       puts Ingredient.all.slice((user_input.to_i)-1).directions
#     else
#       puts "Invalid input, please try again."
#     end
#     help
# end

def list_ingredients
  Ingredient.all.each_with_index {|ingredient, index|
    puts "#{index+1}. #{ingredient.name}"}
    help
end

def test

end

# def read_recipes(name, instructions)
#   puts "Please select a recipe by number"
#   user_response = gets.downcase.strip

#   if (1..4).to_a.include?(user_response.to_i)
#     puts "Opening #{recipe_direction[user_response.to_i -1]}"
#   # elsif songs.include?(user_response)
#   #   puts "Playing #{user_response}"
#   else
#     puts "Invalid input, please try again or write exit."
#   end
# end

# def recipe_direction
#   list_recipes.select do |recipe|
#     puts recipe.directions
#   end
# end

# def recipe_direction
#   Recipe.all.each_with_index {|recipe, index|
#     puts "#{recipe.name} - #{recipe.directions}"}
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
      list_ingredients
    when 'exit'
      exit_app
    else
      help
    end
end
