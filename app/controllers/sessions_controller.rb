class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email_or_username]) ||
      User.find_by(username: params[:email_or_username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to(session[:intended_url] || user, notice: "Welcome back, #{user.name}!")
      session[:intended_url] = nil
    else
      flash.now[:alert] = "Email and password do not match."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to(games_path, notice: "Goodbye!")
  end
end
