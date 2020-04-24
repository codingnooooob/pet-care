class UsersController < ApplicationController
  
  def login
  end
  
  def create
  end

  def show
    @user = User.find(current_user.id)
    @animal = Animal.new
    @animals = Animal.where(user_id: current_user.id)
    # animal = Animal.where(user_id: current_user.id)
    # @animal = animal.order(updated_at: :desc).limit(1)
    # # @animal = Animal.find_by(user_id: current_user.id).order(updated_at: :desc).limit(1)
    # @animals = Animal.where(user_id: current_user.id)
    # @task = Task.new
    # @tasks = Task.where(animal_id: @animal.ids)

  end
end
