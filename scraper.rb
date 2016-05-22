require 'nokogiri'
require 'open-uri'

#more code coming soon!
doc = Nokogiri::HTML(open("http://flatironschool.com/"))

puts doc.css(".grey-text").text

html = open("http://flatironschool.com/team")

doc_team = Nokogiri::HTML(html)

instructors = doc_team.css("#instructors .team-holder .person-box")

instructors.each do |instructor|
  puts "Flatiron School <3 " + instructor.css("h2").text
end
