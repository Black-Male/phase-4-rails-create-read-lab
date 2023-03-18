class PlantsController < ApplicationController
    def index
        render json: (Plant.all)
    end

    def show
        render json: (Plant.find(params[:id]))
    end

    def create
        pleb = Plant.create(name: params[:name],price: params[:price] ,image: params[:image])
        render json: pleb, status: :created
    end
end
