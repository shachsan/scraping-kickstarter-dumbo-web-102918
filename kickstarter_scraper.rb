
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  page = Nokogiri::HTML(html)



  projects = page.css(".project")

  #iterate over projects
  #retrieve title for each project
  #collect imagelink, description, funded and location from each project
  #create a project_info hash with above attribute as key
  #create a new hash called project hash  with project title as key and project_info hash as value
  projects.each do |project|
    project_title = project.css("h2").text
    project_info
  end

  binding.pry



end
create_project_hash
