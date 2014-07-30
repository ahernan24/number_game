class GamesController < ApplicationController
  def new
    @game = Game.new  
  end
  
  def create
   
    @game = Game.new(game_params)
  
    @game.save
    redirect_to @game  
  end
  
  def index
    @games = Game.all
  end 

  def show
    @game = Game.find(params[:id])
  end
  
 private 
  def game_params
    params.require(:game).permit(:guess_count)
  end
  
end
