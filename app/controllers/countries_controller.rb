class CountriesController < ApplicationController
	def index

		@country = Country.all

	end

	def show
		@country = Country.find(params[:id])

	end

	def new

		@country = Country.new

	end


	def create

		@country = Country.new(country_params)

		if @country.save

			redirect_to countries_path

		else

			render 'new'
		end

	end

	def edit

		@country = Country.find(params[:id])

	end

	def update

		@country = Country.find(params[:id])

		if @country.update(country_params)

			redirect_to countries_path

		else

			render 'edit'


	end
end

	private

	def country_params

		params.require(:country).permit(:id, :name)

	end


end
