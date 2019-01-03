class UsersController < ApplicationController

    def show
        render json: User.find(params[:id])
    end

    def create
    end

end
