class AnimalsController < ApplicationController
  def create
    @animal = Animal.new(name: params[:animal][:name], image: params[:animal][:image], text: params[:animal][:text], user_id: current_user.id)
    @animal.save
    redirect_to("/users/#{current_user.id}")
  end

  def new
    @animal = Animal.new
    # redirect_to("/users/#{current_user.id}")
  end

  def showw
    @animals = Animal.where(id: params[:id])
  end

  private
  
  def params_animal
    params_require(:animal).permit(:name, :text, :image, :user_id).merge(:user_id)
  end
end