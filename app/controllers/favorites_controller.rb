class FavoritesController < ApplicationController
  before_action :require_signin
  before_action :set_game

  def create
    @game.favorites.create!(user: current_user)

    redirect_to(@game)
  end

  def destroy
    favorite = current_user.favorites.find(params[:id])
    favorite.destroy

    redirect_to(@game)
  end

  private

  def set_game
    @game = Game.find_by(slug: params[:game_id])
  end
end
