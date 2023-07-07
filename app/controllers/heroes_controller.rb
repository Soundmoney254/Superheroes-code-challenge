class HeroesController < ApplicationController
  def index
    heroes = Hero.all
    render json: heroes, each_serializer: HeroesIndexSerializer
  end
  
  def show
    hero = Hero.find_by(id: params[:id])

    if hero
      render json: hero
    else
      render json: { error: "Hero not found" }, status: :not_found
    end
  end

end
