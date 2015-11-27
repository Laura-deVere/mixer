class Cocktail < ActiveRecord::Base
	has_many :ingredients
	has_many :spirits, through: :ingredients
	scope :stirred, -> { where(:cocktail_type => "Stirred") }
	scope :shaken, -> { where(:cocktail_type => "Shaken") }
	scope :rum, -> { where('recipe like ?', '%Rum%') }
	scope :bourbon, -> { where('recipe like ?', '%Bourbon%') }
	scope :gin, -> { where('recipe like ?', '%gin%') }
	scope :mezcal, -> { where('recipe like ?', '%mezcal%') }

	def cocktail_ingredients
		ingredients = self.ingredients
		ingredients.each do |i|
			spirit = Spirit.find(i.spirit_id)
			puts spirit.spirit_type
		end
	end
end
