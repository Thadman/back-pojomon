class MonstersController < ApplicationController
  before_action :authenticate_user
  before_action :set_monster, except: [:index, :create]
  
  def current
    monster = current_user.monster.last
    render json: { monster: monster, current_user: current_user.email }
  end

  def index
    monsters = current_user.monsters.all
    render json: { monsters: monsters, current_user: current_user.email }
  end

  def show
    if @monster.user_id == current_user.id
      render json: @monster
    else
      render json: "Not your monster"
    end
  end

  def create
    monster = current_user.monsters.create(monster_params)
    if monster.save
      render json: monster, status: :created
    else
      render json: { errors: monster.errors.full_messages }, status: :unprocessable_entity    
    end
  end

  def update

    if @monster.update(monster_params) && @monster.user_id == current_user.id
      render json: 'monster updated', status: 204
    else
      render json: { errors: @monster.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :age, :weight, :hunger, :strength, :poop, :sick, :death, :level, :user_id)
  end

  def set_monster
    @monster = Monster.find(params[:id])
  end
end
