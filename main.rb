require_relative 'lib/film'
require_relative 'lib/film_collection'
require_relative 'lib/console_interface'

filenames = "#{__dir__}/data/"

puts ConsoleInterface.greeting_user
user_choice_sourse_for_recom_films = ConsoleInterface.choice_sourse_for_recomendation

films =
  user_choice_sourse_for_recom_films == 1 ? FilmCollection.from_dir(filenames) : FilmCollection.from_site

films.directors.each_with_index { |director, index| puts "#{index + 1}: #{director}" }

user_choice_director = ConsoleInterface.input_choice

director = films.directors[user_choice_director - 1]

films_for_user = films.films_by_director(director).sample

output_message = ConsoleInterface.message_with_film(films_for_user)
puts output_message
