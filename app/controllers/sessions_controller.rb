class SessionsController < ApplicationController
  def new
  end

  def destroy
    session.delete :name
  end

  def create
  end
end
