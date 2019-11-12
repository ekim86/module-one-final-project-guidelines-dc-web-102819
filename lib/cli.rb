
def welcome
  puts "Welcome to Marija and Eunice's Recipe App!" #entry point
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

# def accept_input
#   puts "Please enter a number:"
#   user_response = gets.downcase.chomp
#   return user_response
# end

def recipe_submenu
  list_recipes
  puts "Please select a recipe to see the directions:"
  user_input = gets.chomp
   puts Recipe.all.slice((user_input.to_i)-1).directions
end



def list_recipes
  Recipe.all.each_with_index {|recipe, index|
  puts "#{index+1}. #{recipe.name}"}
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

def recipe_direction
  Recipe.all.each_with_index {|recipe, index|
    puts "#{recipe.name} - #{recipe.directions}"}
end


def ingredients
  Ingredient.all.each_with_index {|ingredient, index|
    puts "#{index+1}. #{ingredient.name}"}
end

def exit_app
  puts "Thank you for using our app. Goodbye!"
end



def run
  command = ""
  while command
    puts "Please enter a command:"
  command = gets.downcase.strip
  case command
    when 'recipes'
      recipe_submenu
      # exit_app
    when 'ingredients'
      ingredients
    when 'exit'
      exit_app
      break
    else
      help
    end
  end
end
