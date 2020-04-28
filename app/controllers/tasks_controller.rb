class TasksController < ApplicationController
  def create
    @task = Task.new(title: params[:task][:title], date: params[:task][:date], interval: params[:task][:interval],text: params[:task][:text], animal_id: params[:animal_id], status: "2", active: "0", lock: "0")
    @task.save
    redirect_to user_animal_path(params[:animal_id])
    # else
      # params[:id] = params[:animal_id]
      # @animal = Animal.find(params[:animal_id])
      # @animals = Animal.where(user_id: current_user.id)
      # @task = Task.new
      # @tasks = Task.where(animal_id: params[:animal_id]).order(status: "ASC")
      # render template: 'animals/show'
    # end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to user_animal_path(params[:animal_id])
  end

  def status
    @task = Task.find(params[:id])
    case @task.status
    when 0
      status = 1
      lock = 1
      active = 0
    when 1
      status = 0
      lock = 0
      active = 1
    end
    @task.status = status
    @task.lock = lock
    @task.active = active
    @task.save
    redirect_to user_animal_path(@task.animal_id)
  end
end