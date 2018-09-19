class SessionsController < ApplicationController
  def new
  end
  
  def create
    if session[:name]
      session[:name] = params[:name]
      redirect_to 'hello'
    else
      redirect_to '/'
    end
  end
  
  def destroy
    session.delete :name
  end
end
