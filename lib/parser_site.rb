require 'nokogiri'
require 'open-uri'
require "net/http"
require "rexml/document"
require "cgi"

module ParserSite
  extend self

  def parsing_from_site
    doc = Nokogiri::HTML(URI.open('https://ru.wikipedia.org/wiki/250' << CGI.escape('_лучших_фильмов_по_версии_IMDb')))

    table_row = doc.css('#mw-content-text .mw-parser-output table/tbody/tr')
      data_films = table_row.map { |row| row.css('td/a').map(&:content) }
  end
end
