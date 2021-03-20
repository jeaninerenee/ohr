class TaskActivitiesController < ApplicationController
  before_action :set_task_activity, only: %i[ show edit update destroy ]

  # GET /task_activities or /task_activities.json
  def index
    @task_activities = TaskActivity.all
  end

  # GET /task_activities/1 or /task_activities/1.json
  def show
  end

  # GET /task_activities/new
  def new
    @task_activity = TaskActivity.new
  end

  # GET /task_activities/1/edit
  def edit
  end

  # POST /task_activities or /task_activities.json
  def create
    @task_activity = TaskActivity.new(task_activity_params)

    respond_to do |format|
      if @task_activity.save
        format.html { redirect_to @task_activity, notice: "Task activity was successfully created." }
        format.json { render :show, status: :created, location: @task_activity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_activities/1 or /task_activities/1.json
  def update
    respond_to do |format|
      if @task_activity.update(task_activity_params)
        format.html { redirect_to @task_activity, notice: "Task activity was successfully updated." }
        format.json { render :show, status: :ok, location: @task_activity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_activities/1 or /task_activities/1.json
  def destroy
    @task_activity.destroy
    respond_to do |format|
      format.html { redirect_to task_activities_url, notice: "Task activity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_activity
      @task_activity = TaskActivity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_activity_params
      params.require(:task_activity).permit(:task_id, :activity_id, :activity_note, :activity_order, :status_id, :updated_by, :created_by)
    end
end
