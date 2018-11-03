# require libraries/modules here
require_relative '../fixtures/kickstarter.html'
require 

def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  page = Nokogiri::HTML(html)
  binding.pry
end
0
