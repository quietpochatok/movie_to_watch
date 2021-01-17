require 'pry'
require 'nokogiri'
require 'open-uri'
require "net/http"
require "uri"
require "rexml/document"

module ParserSite
  extend self

  def parsing_from_site
    doc = Nokogiri::HTML(URI.open('https://ru.wikipedia.org/wiki/250_%D0%BB%D1%83%D1%87%D1%88%D0%B8%D1%85_%D1%84%D0%B8%D0%BB%D1%8C%D0%BC%D0%BE%D0%B2_%D0%BF%D0%BE_%D0%B2%D0%B5%D1%80%D1%81%D0%B8%D0%B8_IMDb'))

    popo = doc.css('#mw-content-text .mw-parser-output table/tbody/tr')
    a = popo.map do |dsd|
     dsd.css('td/a').map(&:content)
     # Film.new()
     # gets
    end
    p a.last
    #a[3..-1]
  end
    # binding.pry
end
