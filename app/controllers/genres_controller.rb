class GenresController < ApplicationController
  before_action :set_genre, only: %i[show edit update destroy]
  before_action :require_signin, except: [:index, :show]
  before_action :require_admin, except: [:index, :show]

  def index
    @genres = Genre.all
  end

  def show
    @games = @genre.games
  end

  def edit; end

  def update
    if @genre.update(genre_params)
      redirect_to(@genre, notice: 'genre successfully updated!')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to(@genre, notice: 'genre successfully created!')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @genre.destroy
    redirect_to(genres_path, status: :see_other, danger: 'genre successfully destroyed!')
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

  def set_genre
    @genre = Genre.find_by(slug: params[:id])
  end
end
