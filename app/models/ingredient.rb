class Ingredient < ActiveRecord::Base
	belongs_to :cocktails
	belongs_to :spirits
end
