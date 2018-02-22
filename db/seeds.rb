puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")


puts 'Creating cocktails...'
cocktails_attributes = [
  {
    name: "Gin & Tonic",
      { dose:         "Gin",
        ingredient:   "2ml"
      }
      { dose:         "Tonic",
        ingredient:   "50ml"
      }
      { dose:         "Lemon",
        ingredient:   "1 piece"
      }
  },
]
Cocktail.create!(cocktails_attributes)
puts 'Finished!'

