
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  page = Nokogiri::HTML(html)



  projects = page.css(".project")

  #iterate over projects
  
  #collect imagelink, description, funded and location from each project
  #create a hash with above attribute as key
  #
  binding.pry



end
create_project_hash
