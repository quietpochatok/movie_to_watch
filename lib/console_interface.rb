module ConsoleInterface

  def self.greeting_user
    "Программа «Фильм на вечер»\n\n"
  end

  def self.input_choice
    user_input = STDIN.gets.to_i
  end

  def self.message_with_film(film)
    "И сегодня вечером рекомендую посмотреть:\n#{film.to_s}"
  end
end
