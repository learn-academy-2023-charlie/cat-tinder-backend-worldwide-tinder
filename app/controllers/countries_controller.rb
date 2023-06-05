class CountriesController < ApplicationController

    def index
        countries = Country.all
        render json: countries
    end

    def create
    # Create a new country
        country = Country.create(country_params)
        render json: country    
    end

    
    def update
    end
    
    def destroy
    end
    
    # Handle strong parameters, so we are secure
    private
    def country_params
        params.require(:country).permit(:name, :age, :hobby, :image)
    end
end
