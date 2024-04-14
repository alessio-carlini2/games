# frozen_string_literal: true

class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update destroy]
  before_action :require_signin, except: [:index, :show]
  before_action :require_admin, except: [:index, :show]

  def index
    @games = Game.send(games_filter)
  end

  def show
    @fans = @game.fans
    @genres = @game.genres.order(:name)
    if current_user
      @favorite = current_user.favorites.find_by(game_id: @game.id)
    end
  end

  def edit; end

  def update
    if @game.update(game_params)
      redirect_to(@game, notice: 'Game successfully updated!')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to(@game, notice: 'Game successfully created!')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @game.destroy
    redirect_to(games_path, status: :see_other, danger: 'Game successfully destroyed!')
  end

  private

  def game_params
    params.require(:game).permit(:title, :rating, :total_gross, :description, :released_on, :director, :play_time,
                                 :main_image, genre_ids: [])
  end

  def set_game
    @game = Game.find_by(slug: params[:id])
  end


  def games_filter
    if params[:filter].in? %w(upcoming recent hits flops)
      params[:filter]
    else
      :released
    end
  end
end
