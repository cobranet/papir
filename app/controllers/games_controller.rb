class GamesController < ApplicationController
  
  def show
    g = Game.find(session[:game])
    @p = Pback.new
  end
  
  def create
    g = Game.new
    g.language = params[:language]
    g.save!
    session[:game] = g.id
    redirect_to game_path(g)
  end
  
end
