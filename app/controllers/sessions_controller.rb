class SessionsController < ApplicationController
  def new
  end
  
  def create
    session[:user_name] = params[:user_name]
  end
  
  def destroy
  end
end
