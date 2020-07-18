class UsersController < ApplicationController
  def create
    User.create(user_params)
    render json: "user created", status: :created
  end

  private 

  def user_params 
    params.require(:user).permit(:username, :email, :password)
  end 
end

