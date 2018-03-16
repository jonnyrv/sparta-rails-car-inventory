class OwnersController < ApplicationController

    def index
        @owner = Owner.all
        render :index
    end

    def new
        @owner = Owner.new
        render :new
    end

    def create
        @owner = Owner.new(owner_params)
        if(@owner.save)
            redirect_to(owners_path)
        end
    end

    def owner_params
        params.require(:owner).permit(:name, :age, :email_address, :phone_number)
    end


    def edit
        @owner = Owner.find(params[:id].to_i)
        render :edit
    end

    def show
        @owner = Owner.find(params[:id].to_i)
    end

    def update
        @owner = Owner.find(params[:id].to_i)
        @owner.update(owner_params)
    end

    def destroy
        @owner = Owner.find(params[:id].to_i)
        @owner.destroy
        redirect_to(owners_path)
    end




end
