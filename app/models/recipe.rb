class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.each do |ingredient_attributes|
      self.ingredients.build(ingredient_attributes)
    end
  end
end
