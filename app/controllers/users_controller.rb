class UsersController < ApplicationController
  
  def login
  end
  
  def create
    # @animal = Animal.new
  end

  def show
    @user = User.find(params[:id])
    @animal = Animal.new
    # @animals = Animal.find_by(params[:id])
    @animals = Animal.where(user_id: params[:id])
  end
end
