class CocktailsController < ApplicationController

	def index
		@cocktails = Cocktail.all
	end

	def show
		
	end

	def edit
		
	end

	def new
		@cocktail = Cocktail.new
	end

	def create
		@cocktail = Cocktail.new(cocktail_params)
		if @cocktail.save
			redirect_to cocktails_path
		else
			render :new
		end		
	end

	def update
		
	end

	def destroy
		
	end

	private
	def cocktail_params
		params.require(:cocktail).permit(:cocktail_name, :cocktail_type, :recipe)
	end
end	