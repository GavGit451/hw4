class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by({ "email" => params["email"] })
    if @user != nil
      redirect to "/places"
    else
      flash["notice"] = "Nope."
      redirect_to "/sessions/new"
  end

  def destroy
  end
end
  