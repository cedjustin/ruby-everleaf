class TasksController < ApplicationController
  before_action :check_if_logged_in
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  def index
    if logged_in?
      @search = Task.ransack(params[:q])
      @tasks = @search.result.includes(:associations, :labels).order(created_at: :desc).page(params[:page]).where(user_id: @current_user.id)
      @labels = Label.all
    else
      redirect_to new_session_path
    end
  end

  # GET /tasks/1
  def show
    @labels = Label.all
  end

  # GET /tasks/new
  def new
    @task = Task.new
    current_user = @current_user
    @labels = Label.all
  end

  # GET /tasks/1/edit
  def edit
    @labels = Label.all
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)
    @labels = Label.all
    if @task.save
      redirect_to @task, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    redirect_to tasks_url, notice: 'Task was successfully destroyed.'
  end

  private

  def check_if_logged_in
    if !logged_in?
      redirect_to new_session_path, notice: "you are not authorized to access this page"
    end
  end
  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = Task.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def task_params
    params.require(:task).permit(:title,:start_date, :end_date, :status, :priority, :user_id, label_ids: [])
  end
end
