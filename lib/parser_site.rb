require 'nokogiri'
require 'open-uri'
require "cgi"

module ParserSite
  YOUR_URL = 'https://ru.wikipedia.org/wiki/250' << CGI.escape('_лучших_фильмов_по_версии_IMDb')
  extend self

  def parsing_page_site
    doc = Nokogiri::HTML(URI.open(YOUR_URL))

    table_row = doc.css('#mw-content-text .mw-parser-output table/tbody/tr')
      data_films = table_row.map { |row| row.css('td/a').map(&:content) }
  end
end
