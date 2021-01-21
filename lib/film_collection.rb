require_relative 'parser_site'

class FilmCollection
  attr_reader :films

  def self.from_dir(dir_path)
    films =
      Dir[File.join(dir_path,"*.txt")].map do |file_name|
        title, director, year = File.readlines(file_name, chomp: true)
        Film.new(title, director, year)
      end

    new(films)
  end

  def self.from_site
    films_from_site = ParserSite.parsing_page_wiki_films_to_IMDb.map do |title, year, director|
        Film.new(title, director, year)
      end
    new(films_from_site)
  end

  def initialize(films)
    @films = films
  end

  def directors
    @directors ||= @films.map(&:director).uniq
  end

  def films_by_director(director)
    @films.select { | film | film.director == director }
  end
end
