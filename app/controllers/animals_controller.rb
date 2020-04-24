class AnimalsController < ApplicationController
  def create
    @animal = Animal.new(name: params[:animal][:name], image: params[:animal][:image], text: params[:animal][:text], user_id: current_user.id)
    @animal.save
    redirect_to user_animal_path(@animal.id)
  end

  def new
    @animal = Animal.new
  end

  def show
    @animal = Animal.find(params[:id])
    @animals = Animal.where(user_id: current_user.id)
    @task = Task.new
    @tasks = Task.where(animal_id: params[:id]).order(status: "ASC")
    doing = @tasks.where(status: 0).count

    @animal.doing = doing
    @animal.save
    
    @tasks.each do |s|
      
      days = []
      nextDate = []
      date = s.date
      
      date.step(date + 365, s.interval.to_i) do |day|
        days << day
        if day > Date.today
          nextDate << day
        end
      end

      s.next = nextDate.first
      
      if days.include?(Date.today) && s.lock == 0
        s.active = 1
        s.status = 0
      elsif days.exclude?(Date.today) && s.lock == 1 && s.active == 0
        s.lock = 0
        s.status = 1
      end
      s.save
    end
  end
  # private
  
  # def params_animal
  #   params_require(:animal).permit(:name, :text, :image, :user_id).merge(:user_id)
  # end
end