require 'nokogiri'
require 'open-uri'
require 'addressable/uri'

module ParserSite
  extend self
  YOUR_URL = 'https://ru.wikipedia.org/wiki/250_лучших_фильмов_по_версии_IMDb'

  def parsing_page_wiki_films_to_IMDb
    doc = Nokogiri::HTML(URI.open(Addressable::URI.encode(YOUR_URL)))

    table_row = doc.css('#mw-content-text .mw-parser-output table/tbody/tr')
      data_films = table_row.map { |row| row.css('td/a').map(&:content) }
  end
end
