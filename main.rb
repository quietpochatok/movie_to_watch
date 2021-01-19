require_relative 'lib/film'
require_relative 'lib/film_collection'

filenames = "#{__dir__}/data/"

puts  "Программа «Фильм на вечер»\n\nВыберите вариант источника списка фильмов
        1. Из локальных данных
        2. Со страницы википедии, в рубрике 150 лучших фильмов"

user_choice_sourse_for_recom_films = STDIN.gets.to_i

films =
  user_choice_sourse_for_recom_films == 1 ? FilmCollection.from_dir(filenames) : FilmCollection.from_site

films.directors.reject { |i| i == nil }.each_with_index { |director, index| puts "#{index + 1}: #{director}" }

user_choice_director = STDIN.gets.to_i

director = films.directors[user_choice_director]

films_for_user = films.films_by_director(director).sample

puts "И сегодня вечером рекомендую посмотреть:\n#{films_for_user.to_s}"
