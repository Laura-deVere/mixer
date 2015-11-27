class SpiritsController < ApplicationController
	before_action :set_spirit, only: [:show, :edit, :update, :destroy]
	def index
		@spirits = Spirit.all
	end

	def show
		
	end

	def new
		@spirit = Spirit.new
	end

	def edit
		
	end

	def create
		@spirit = Spirit.new(spirit_params)
		if @spirit.save
			redirect_to spirits_path
		else
			render :new
		end
	end

	def update
		
	end

	def delete
		
	end

	private

	def spirit_params
		params.require(:spirit).permit(:spirit_type, :brand_name, :description)  
	end

	def set_spirit
		@spirit = Spirit.find(params[:id])
	end
end	