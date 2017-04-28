class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to tacospots_path, notice: "You're in, welcome."
    else
      flash.now.alert = "Something went wrong. Try again."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "See you next time."
  end

end
