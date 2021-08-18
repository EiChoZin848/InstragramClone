class UsersController < ApplicationController
before_filter :authenticate_user!
    def index
        @users = User.all
    end
    
    def show
        @user = User.find(params[:id])
        @posts = @user.posts.all
    end
    def edit
        @user = User.find(params[:id])

    end
    def update
        current_user = User.find(params[:id])
        current_user.update_attributes(params[:user])
        redirect_to current_user
    end

    
end
