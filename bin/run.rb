require_relative '../config/environment'

require_relative '../lib/something'




def welcome
  puts "Welcome to Marija and Eunice's Recipe App!" #entry point
  help
  # response = accept_input
  # if
end

def help
  help = <<-HELP
    Please choose one of the following:
    1. Recipes : displays all the recipes
    2. Ingredients : displays a list of ingredients to choose from
    3. Blank :
    4. Exit : exits the app
    HELP
  puts help
end

# def accept_input
#   puts "Please enter a number:"
#   user_response = gets.downcase.chomp
#   return user_response
# end

welcome

def recipes
  Recipe.all.each_with_index {|recipe, index|
  puts "#{index+1}. #{recipe.name}"}
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
    when '1'
      recipes
    when '2'
      ingredients
    when '4'
      exit_app
      break
    else
      help
    end
  end
end

run





