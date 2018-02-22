class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
end

# how to depend destory ingredient when deleting cocktail unless not used elsewhere?
# how to create uniqu pair condition
