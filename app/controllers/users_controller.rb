class UsersController < ApplicationController

    

    def index
        @user = User.new
    end

    def create
        user = User.new(user_params)

        if user.save
            session[:user_id] = user.id
            redirect_to players_path
        else
            flash[:errors] = user.errors.full_messages
            redirect_back(fallback_location:"/")
            # redirect_back(fallback_location: root_path)
            # redirect_back(fallback_location:"/users/new")
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
