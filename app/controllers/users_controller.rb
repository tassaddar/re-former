class UsersController < ApplicationController

def show
    @user = User.find(params[:id])
end

    def new
        @user = User.new
    end


    def create
       @user = User.new(user_params)

       if @user.save
        redirect_to new_user_path
       else
        render :new
       end

    end


    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
