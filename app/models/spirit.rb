class Spirit < ActiveRecord::Base
	has_many :ingredients
	has_many :cocktails, through: :ingredients
	scope :bourbon, -> { where(:spirit_type => "Bourbon") }
	scope :rye, -> { where(:spirit_type => "Rye") }
	scope :irishwhiskey, -> { where(:spirit_type => "Irish Whiskey") }
	scope :scotch, -> { where(:spirit_type => "Scotch") }
end
