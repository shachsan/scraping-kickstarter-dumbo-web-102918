
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  page = Nokogiri::HTML(html)



  projects = page.css(".project")
  projects_hash ={}

  #iterate over projects
  #retrieve title for each project
  #collect imagelink, description, funded and location from each project
  #create a project_info hash with above attribute as key
  #create a new hash called project hash  with project title as key and project_info hash as value
  projects.each do |project|
    project_title = project.css("h2").text
    project_info = {}
    project_info[:image_link]=project.css("a img").attribute("src").value
    project_info[:description]=
    project_info[:location]=
    project_info[:percent_funded]=
    projects_hash["project_title"]=project_info
  end

  binding.pry



end
create_project_hash
