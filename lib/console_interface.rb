module ConsoleInterface
  def self.greeting_user
    "Программа «Фильм на вечер»\n\nВыберите вариант источника списка фильмов
      1. Из локальных данных
      2. Со страницы википедии, в рубрике 150 лучших фильмов"
  end

  def self.choice_sourse_for_recomendation
    STDIN.gets.to_i
  end

  def self.input_choice
    STDIN.gets.to_i
  end

  def self.message_with_film(film)
    "И сегодня вечером рекомендую посмотреть:\n#{film.to_s}"
  end
end
