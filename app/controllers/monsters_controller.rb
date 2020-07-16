class MonstersController < ApplicationController
  
  def index
   monsters = Monster.all
   render json: {monsters: monsters}, status: 200
  end

  def create
    monster = Monster.new(monster_params)
    if monster.save
      render json: {}, status: :created
    else
      render json: { errors: monster.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :age, :weight, :hunger, :strength, :poop, :sick, :death, :level, :user_id)
  end
end
