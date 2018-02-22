require 'open-uri'

puts "creating seeds!"

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")


url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks_file = open(url).read
drinks = JSON.parse(drinks_file)["drinks"]
drinks.each do |ingredient|
  Ingredient.create(name: ingredient[ 'strIngredient1' ])
end

puts "finished seeds"
