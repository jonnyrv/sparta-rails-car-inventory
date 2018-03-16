class DealershipsController < ApplicationController
    def index
        @dealership = Dealership.all
        render :index
    end

    def new
        @dealership = Dealership.new
        render :new
    end

    def create
        @dealership = Dealership.new(dealership_params)
        if(@dealership.save)
            redirect_to(dealerships_path)
        end
    end

    def dealership_params
        params.require(:dealership).permit(:name, :dealers_name, :car_id)
    end


    def edit
        @dealership = Dealership.find(params[:id].to_i)
        render :edit
    end

    def show
        @dealership = Dealership.find(params[:id].to_i)
    end

    def update
        @dealership = Dealership.find(params[:id].to_i)
        @dealership.update(dealership_params)
    end

    def destroy
        @dealership = Dealership.find(params[:id].to_i)
        @dealership.destroy
        redirect_to(dealerships_path)
    end

end
