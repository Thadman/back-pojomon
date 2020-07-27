class UsersController < ApplicationController
  def create
    user = User.create(user_params)
    user.monsters.create(
      name: "Egg", 
      age: 0, 
      weight: 1, 
      hunger: 0, 
      strength: 0, 
      poop: 0, 
      sick: false, 
      death: 30, 
      level: "Egg",
      image: "Egg",
      counter: 0
    )
    render json: "user created", status: :created
  end

  private 

  def user_params 
    params.require(:user).permit(:username, :email, :password)
  end 
end

