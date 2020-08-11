class HerosController < ApplicationController

    def index
        @heros = Hero.all
        render json: @heros, include: :comments
    end 

    def create
        @hero = Hero.create(name: params[:name], img: params[:img], intelligence: params[:intelligence], strength: params[:strength], speed: params[:speed], power: params[:power], likes: params[:likes])
        render json: @hero
    end
    
    def show
        @hero = Hero.find(params[:id])
        render json: @hero
    end 

    def update
        @hero = Hero.find(params[:id])
        @hero.update(hero_params)
        render json: @hero 
    end 

    def destroy
        @hero = Hero.find(params[:id])
        @hero = @hero.destroy
        render json: @hero
    end 

    private
    def hero_params
      params.require(:hero).permit([:name, :img, :intelligence, :strength, :speed, :power, :likes ])
    end

end