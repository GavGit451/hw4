class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by({ "email" => params["email"] })
    if @user != nil
    if @user["password"] == params["password"]
     
      flash["notice"] = "Welcome."
      redirect_to "/places"
    else
      flash["notice"] = "Nope."
      redirect_to "/sessions/new"
  end

    else
      flash["notice"] = "Nope."
      redirect_to "/sessions/new"
  end
end

  def destroy
  end
end