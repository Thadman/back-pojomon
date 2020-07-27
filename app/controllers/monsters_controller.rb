class MonstersController < ApplicationController
  before_action :authenticate_user
  before_action :set_monster, except: [:index, :create, :current]
  
  def current
    monster = current_user.monsters.last
    render json: { monster: monster, current_user: current_user }
  end

  def index
    monsters = current_user.monsters.all
    render json: { monsters: monsters, current_user: current_user }
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
      render json: { monster: @monster, current_user: current_user }
    else
      render json: { errors: @monster.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :age, :weight, :hunger, :strength, :poop, :sick, :death, :level, :image, :user_id)
  end

  def set_monster
    @monster = Monster.find(params[:id])
  end
end
