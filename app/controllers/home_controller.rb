require 'open-uri'
class HomeController < ApplicationController
  def index
    site = "https://www.bbc.co.uk/"
    page = Nokogiri::HTML(URI.open(site))
    links = page.xpath('//a')
    @links = links.map{ |element| element["href"]}
  end
end
