class GamesController < ApplicationController
  def new
    @game = Game.new  
  end
  
  def create
    @game = Game.new
    @game.save!
    
    if @game.answer == params[:guess].to_i
      redirect_to @game, notice: "You guessed right!"
    else 
      redirect_to @game, notice: "You guessed wrong!" 
    end
  end

  def index
    @games = Game.all
  end 

  def show
    @game = Game.find(params[:id])
  end
  
  def update
    @game = Game.find(params[:id])
    
    @game.guess_count += 1
    @game.save! 
    if @game.answer == params[:guess].to_i
      redirect_to @game, notice: "You guessed right!"
        
    else
      redirect_to @game, notice: "You guessed wrong!"
  end
end
  
 private 
  def game_params
    params.require(:game).permit(:guess, :guess_count)
  end
  
end
