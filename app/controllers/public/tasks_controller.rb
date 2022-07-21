class Public::TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:show, :edit, :update, :destroy]

  def index
    @task = Task.new
    @tasks = current_user.tasks
  end

  def show

    @post_comment = PostComment.new

  end


  def create
    @tasks = current_user.tasks
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    @task.save
    redirect_to tasks_path
  end

  def edit

  end

  def update

    if @task.update(task_params)
      redirect_to task_path(@task), notice: "You have updated task successfully."
    else
      render "edit"

    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy!
    redirect_to tasks_path
  end


  private

  def task_params
     params.require(:task).permit(:user_id, :title, :body, :due_date)
  end

  def ensure_correct_user
    @task = Task.find(params[:id])
    unless @task.user == current_user
      redirect_to tasks_path
    end
  end
end
