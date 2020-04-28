class UsersController < ApplicationController
  
  def top
    if user_signed_in?
      redirect_to user_path(current_user.id)
    end
  end
  
  def create
  end

  def show
    if current_user.present?
      @user = User.find(current_user.id)
      @animal = Animal.new
      @animals = Animal.where(user_id: current_user.id)
      @animals.each do |a|
        @tasks = Task.where(animal_id: a.id)
        doing = @tasks.where(status: 0).count
        tomorrow = @tasks.where(next: Date.tomorrow).count
        a.doing = doing
        a.tomorrow = tomorrow
        a.save
      end
    else
      redirect_to new_user_password_path
    end
    @doing = @animals.sum(:doing)
    @tomorrow = @animals.sum(:tomorrow)
  end

  def index
    redirect_to new_user_registration_path
  end
end
