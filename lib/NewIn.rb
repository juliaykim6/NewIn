# frozen_string_literal: true
#Environment file 

require 'pry'
require 'open-uri'
require 'nokogiri'


require_relative "./NewIn/version"
require_relative "./NewIn/cli"


#module NewIn
  #class Error < StandardError; end
  # Your code goes here...
#end

#def create_project_hash#
#  html = File.read('https://www.farfetch.com/sets/women/new-in-this-week-eu-women.aspx')
#  kickstarter = Nokogiri::HTML(html)
#
#  items = {}
#
#  kickstarter.css("div.l_bab25b _18fbc8").each do |project|
#    brand = project.css("h2.bbcard_name strong a").text
#    projects[brand.to_sym] = {
#      :brand => project.css("div._346238").attribute("src").value,
#      :name => project.css("p._d85b45").text,
#      :price => project.css("div._6356bb span.price").text,
#      :url => "https://www.farfetch.com" + @doc.search(" a[href]")[0]['href']
#    }
#  end
#
#  # return the items hash
#  items
#end
