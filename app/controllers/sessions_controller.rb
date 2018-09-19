class SessionsController < ApplicationController
  def new
  end
  
  def create
    if session[:name]
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
  end
  
  def destroy
    session.delete :name
  end
end
