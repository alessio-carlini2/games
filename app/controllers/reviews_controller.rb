# frozen_string_literal: true

class ReviewsController < ApplicationController
  before_action :set_game
  before_action :set_review, except: [:index, :create, :new]
  before_action :require_signin

  def index
    @reviews = @game.reviews
  end

  def show; end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to(game_review_path(@game, @review), notice: 'Review successfully updated!')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @review = @game.reviews.new
  end

  def create
    @review = @game.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to(game_review_path(@game, @review), notice: 'Thank you for your honesty!')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review.destroy
    redirect_to(game_reviews_path(@game), status: :see_other, danger: 'Review successfully destroyed!')
  end

  private

  def set_game
    @game = Game.find_by(slug: params[:game_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:stars, :comment)
  end
end
