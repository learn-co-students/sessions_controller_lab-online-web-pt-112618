class SessionsController < ApplicationController
  def new
  end

  def destroy
    session.delete :name
  end

  def create
    if session[:name].empty?
      redirect_to '/login'
    else session[:name] = params[:name]
      redirect_to '/'
    end  
  end
end
