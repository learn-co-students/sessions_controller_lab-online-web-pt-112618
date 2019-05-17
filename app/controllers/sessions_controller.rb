class SessionsController < ApplicationController
  def new
  end

  def destroy
    session.delete :name
  end

  def create
    if params[:name].nil?
      redirect_to controller: 'sessions', action: 'new'
    else session[:name] = params[:name]
      redirect_to '/'
    end
  end
end
