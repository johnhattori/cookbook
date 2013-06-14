require "rubygems"
require "nokogiri"
require "open-uri"

def get_ingredients(url)

recipe = Nokogiri::HTML(open(url))
ingredients = recipe.css("#ingredients").text.gsub(/\s+/, " ")
title = recipe.at_css(".fn").text

Recipe.create( :name => title , :content => "#{ingredients}")

end


get_ingredients("http://www.epicurious.com/recipes/food/views/Coq-au-Vin-51133420")
get_ingredients("http://www.epicurious.com/recipes/food/views/Boeuf-Bourguignon-104754")
get_ingredients("http://www.epicurious.com/recipes/food/views/Veal-Stew-Blanquette-de-Veau-104763")
get_ingredients("http://www.epicurious.com/recipes/food/views/Spaghetti-alla-Carbonara-107810")