class SyllabusActivitiesController < ApplicationController
  before_action :set_syllabus_activity, only: %i[ show edit update destroy ]

  # GET /syllabus_activities or /syllabus_activities.json
  def index
    @syllabus_activities = SyllabusActivity.all
  end

  # GET /syllabus_activities/1 or /syllabus_activities/1.json
  def show
  end

  # GET /syllabus_activities/new
  def new
    @syllabus_activity = SyllabusActivity.new
  end

  # GET /syllabus_activities/1/edit
  def edit
  end

  # POST /syllabus_activities or /syllabus_activities.json
  def create
    @syllabus_activity = SyllabusActivity.new(syllabus_activity_params)

    respond_to do |format|
      if @syllabus_activity.save
        format.html { redirect_to @syllabus_activity, notice: "Syllabus activity was successfully created." }
        format.json { render :show, status: :created, location: @syllabus_activity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @syllabus_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syllabus_activities/1 or /syllabus_activities/1.json
  def update
    respond_to do |format|
      if @syllabus_activity.update(syllabus_activity_params)
        format.html { redirect_to @syllabus_activity, notice: "Syllabus activity was successfully updated." }
        format.json { render :show, status: :ok, location: @syllabus_activity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @syllabus_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syllabus_activities/1 or /syllabus_activities/1.json
  def destroy
    @syllabus_activity.destroy
    respond_to do |format|
      format.html { redirect_to syllabus_activities_url, notice: "Syllabus activity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syllabus_activity
      @syllabus_activity = SyllabusActivity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def syllabus_activity_params
      params.require(:syllabus_activity).permit(:syllabus_id, :activity_id, :activity_note, :activity_order, :status_id, :updated_by, :created_by)
    end
end
