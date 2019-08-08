class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }

  INGREDIENTS = Ingredient.all.map { |ingredient| [ingredient.name, ingredient.id] }
end
