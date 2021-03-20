class SyllabusTaskActivitiesController < ApplicationController
  before_action :set_syllabus_task_activity, only: %i[ show edit update destroy ]

  # GET /syllabus_task_activities or /syllabus_task_activities.json
  def index
    @syllabus_task_activities = SyllabusTaskActivity.all
  end

  # GET /syllabus_task_activities/1 or /syllabus_task_activities/1.json
  def show
  end

  # GET /syllabus_task_activities/new
  def new
    @syllabus_task_activity = SyllabusTaskActivity.new
  end

  # GET /syllabus_task_activities/1/edit
  def edit
  end

  # POST /syllabus_task_activities or /syllabus_task_activities.json
  def create
    @syllabus_task_activity = SyllabusTaskActivity.new(syllabus_task_activity_params)

    respond_to do |format|
      if @syllabus_task_activity.save
        format.html { redirect_to @syllabus_task_activity, notice: "Syllabus task activity was successfully created." }
        format.json { render :show, status: :created, location: @syllabus_task_activity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @syllabus_task_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syllabus_task_activities/1 or /syllabus_task_activities/1.json
  def update
    respond_to do |format|
      if @syllabus_task_activity.update(syllabus_task_activity_params)
        format.html { redirect_to @syllabus_task_activity, notice: "Syllabus task activity was successfully updated." }
        format.json { render :show, status: :ok, location: @syllabus_task_activity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @syllabus_task_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syllabus_task_activities/1 or /syllabus_task_activities/1.json
  def destroy
    @syllabus_task_activity.destroy
    respond_to do |format|
      format.html { redirect_to syllabus_task_activities_url, notice: "Syllabus task activity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syllabus_task_activity
      @syllabus_task_activity = SyllabusTaskActivity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def syllabus_task_activity_params
      params.require(:syllabus_task_activity).permit(:syllabus_task_id, :activity_id, :primary_ind, :activity_note, :activity_order, :status_id, :updated_by, :created_by)
    end
end
