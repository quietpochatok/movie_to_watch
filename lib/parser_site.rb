require 'pry'
require 'nokogiri'
require 'open-uri'
require "net/http"
require "uri"
require "rexml/document"

module ParserSite
  extend self

  def parsing_from_site
    doc = Nokogiri::HTML(URI.open(URI.encode('https://ru.wikipedia.org/wiki/250_лучших_фильмов_по_версии_IMDb')))

    popo = doc.css('#mw-content-text .mw-parser-output table/tbody/tr')
    a = popo.map do |dsd|
     dsd.css('td/a').map(&:content)
     # Film.new()
     # gets
    end
    #p a[2], a[9]
    #a[3..-1]
  end
    #binding.pry
end
