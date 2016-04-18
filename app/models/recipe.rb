require 'pry'
class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.each do |i, ingredient_attributes|
      binding.pry
      self.ingredients.build(ingredient_attributes) unless ingredient_attributes["name"].blank?
    end
  end
end
