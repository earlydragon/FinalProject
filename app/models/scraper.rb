require 'open-uri'

class Scraper
  def initialize
    html = open("http://www.pickuplinesgalore.com/cheesy.html")
    @nokogiri1 = Nokogiri::HTML(html)
    html_1 = open("http://www.pickuplinesgalore.com/computer.html")
    @nokogiri2 = Nokogiri::HTML(html_1)
    html_3= open("http://www.pickuplinesgalore.com/math.html")
    @nokogiri3 = Nokogiri::HTML(html_3)
    html_4= open("http://www.pickuplinesgalore.com/women.html")
    @nokogiri4 = Nokogiri::HTML(html_4)
  end

   def funny_title
    lines = @nokogiri1.css("tr td p.style25")
     @funny_title = lines[rand(lines.count)].text
  end

  def computer_title
    lines = @nokogiri2.css("tr td span.style25")
    @computer_title = lines[rand(lines.count)].text
  end

  def math_title
    lines = @nokogiri3.css("tr td span.style25")
    @math_title = lines[rand(lines.count)].text
  end

  def women_title
    lines = @nokogiri4.css("tr td p.style25")
    @women_title = lines[rand(lines.count)].text
  end
end