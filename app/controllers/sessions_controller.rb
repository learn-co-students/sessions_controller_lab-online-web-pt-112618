class SessionsController < ApplicationController
  def new
  end

  def destroy
    session.delete :name
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to controller: 'sessions', action: 'hello'
    end
  end
end
