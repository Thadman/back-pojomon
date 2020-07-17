class MonstersController < ApplicationController
  before_action :authenticate_user
  before_action :set_monster, except: [:index, :create]
  
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
    render json: monster, status: :created
  end

  def update
    @monster.update(monster_params)
    render json: 'monster updated', status: 204
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :age, :weight, :hunger, :strength, :poop, :sick, :death, :level, :user_id)
  end

  def set_monster
    @monster = Monster.find(params[:id])
  end
end
