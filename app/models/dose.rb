class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :ingredient_id, uniqueness: { scope: :cocktail_id }
  belongs_to :ingredient
  belongs_to :cocktail
end
