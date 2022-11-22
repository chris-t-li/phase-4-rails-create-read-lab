class PlantsController < ApplicationController
    # GET /plants
    def index
        plants = Plant.all
        render json: plants
    end

    # GET /plants/:id
    def show 
        render json: Plant.find_by(id: params[:id])
    end

    # POST /plants
    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end
end
