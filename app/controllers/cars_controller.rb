class CarsController < ApplicationController

    def index
        @car = Car.all
        render :index
    end

    def new
        @owner = Owner.new
        @car = Car.new
        render :new
    end

    def create
        @car = Car.new(car_params)
        if(@car.save)
            redirect_to "/"
        end
    end

    def car_params
        params.require(:car).permit(:make, :model, :year, :color, :engine_size, :body_type, :owner_id, :dealership_id)
    end


    def edit
        @car = Car.find(params[:id].to_i)
        render :edit
    end

    def show
        @car = Car.find(params[:id].to_i)
    end

    def update
        @car = Car.find(params[:id].to_i)
        @car.update(car_params)
    end

    def destroy
        @car = Car.find(params[:id].to_i)
        @car.destroy
        redirect_to(cars_path)
    end

    

end
