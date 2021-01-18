require 'pry'
require_relative 'lib/film'
require_relative 'lib/film_collection'
require_relative 'lib/console_interface'
require_relative 'lib/parser_site'

filenames = "#{__dir__}/data/"

# films =
#   filenames.map do |filename|
#     title, director, year = File.readlines(filename, chomp:true)
#     Film.new(title, director, year)
#   end

# directors = films.map(&:director).uniq
puts ConsoleInterface.greeting_user
variant_for_recom_films = ConsoleInterface.choice_variant_for_recomendation

films =
  if variant_for_recom_films == 1
    FilmCollection.from_dir(filenames)
  else
    FilmCollection.from_site
  end

films.directors.each_with_index { |director, index| puts "#{index + 1}: #{director}" }

user_choice = ConsoleInterface.input_choice
# to do from film_collection and if/elsif/end choise where source
director = films.directors[user_choice - 1]

films_for_user = films.films_by_director(director).sample

output_message = ConsoleInterface.message_with_film(films_for_user)
puts output_message


