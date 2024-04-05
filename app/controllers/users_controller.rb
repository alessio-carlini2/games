class UsersController < ApplicationController
    before_action :require_signin, except: [:new, :create]
    before_action :require_correct_user, only: [:edit, :update, :destroy]
    before_action :set_user, only: [:show, :destroy]
    before_action :require_admin, only: [:destroy]

    def index
        @users = User.not_admins
    end

    def show
        @reviews = @user.reviews
        @favorite_games = @user.favorite_games
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to(@user, notice: 'Thanks for signing up!')
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit; end

    def update
        if @user.update(user_params)
            redirect_to(@user, notice: 'Account succesfully updated!')
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @user.destroy
        redirect_to(games_path, status: :see_other, danger: 'Account successfully destroyed!')
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :username)
    end

    def set_user
        @user = User.find_by(slug: params[:id])
    end

    def require_correct_user
        @user = User.find_by(slug: params[:id])
        redirect_to(root_url, status: :see_other) unless current_user?(@user)
    end
end
