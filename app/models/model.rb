require './config/environment'
require 'nokogiri'
require 'open-uri'

class Scraper
  def initialize
    html = open("http://www.pickuplinesgalore.com/cheesy.html")
    @nokogiri1 = Nokogiri::HTML(html)
    html_1 = open("http://www.pickuplinesgalore.com/women.html")
    @nokogiri2 = Nokogiri::HTML(html_1)
    html_3= open("http://www.pickuplinesgalore.com/computer.html")
    @nokogiri3 = Nokogiri::HTML(html_3)
  end

def cheesy
    @cheesy = @nokogiri1.css("style25")
  end

  def women
    @women = @nokogiri2.css("style25")
  end

  def computer
    @computer = @nokogiri3.css("style25")
  end
end