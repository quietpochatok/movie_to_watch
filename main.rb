require_relative 'film'
require_relative 'film_collection'
require_relative 'console_interface'
require_relative 'parser_site'

filenames = Dir["#{__dir__}/data/*"]

# films =
#   filenames.map do |filename|
#     title, director, year = File.readlines(filename, chomp:true)
#     Film.new(title, director, year)
#   end

# directors = films.map(&:director).uniq

FilmCollection.from_dir(filenames)

directors.each_with_index { |director, index| puts "#{index + 1}: #{director}" }

puts ConsoleInterface.greeting_user
user_choice = ConsoleInterface.input_choice

director = directors[user_choice - 1]
films_for_user = films.select { |film| film.director == director }.sample

output_message = ConsoleInterface.message_with_film(films_for_user)
puts output_message


