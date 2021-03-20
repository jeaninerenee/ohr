class SyllabusTasksController < ApplicationController
  before_action :set_syllabus_task, only: %i[ show edit update destroy ]

  # GET /syllabus_tasks or /syllabus_tasks.json
  def index
    @syllabus_tasks = SyllabusTask.all
  end

  # GET /syllabus_tasks/1 or /syllabus_tasks/1.json
  def show
  end

  # GET /syllabus_tasks/new
  def new
    @syllabus_task = SyllabusTask.new
  end

  # GET /syllabus_tasks/1/edit
  def edit
  end

  # POST /syllabus_tasks or /syllabus_tasks.json
  def create
    @syllabus_task = SyllabusTask.new(syllabus_task_params)

    respond_to do |format|
      if @syllabus_task.save
        format.html { redirect_to @syllabus_task, notice: "Syllabus task was successfully created." }
        format.json { render :show, status: :created, location: @syllabus_task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @syllabus_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syllabus_tasks/1 or /syllabus_tasks/1.json
  def update
    respond_to do |format|
      if @syllabus_task.update(syllabus_task_params)
        format.html { redirect_to @syllabus_task, notice: "Syllabus task was successfully updated." }
        format.json { render :show, status: :ok, location: @syllabus_task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @syllabus_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syllabus_tasks/1 or /syllabus_tasks/1.json
  def destroy
    @syllabus_task.destroy
    respond_to do |format|
      format.html { redirect_to syllabus_tasks_url, notice: "Syllabus task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syllabus_task
      @syllabus_task = SyllabusTask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def syllabus_task_params
      params.require(:syllabus_task).permit(:syllabus_id, :week_number, :day_id, :session_number, :syllabus_task, :pretest_ind, :test_ind, :quiz_ind, :exam_ind, :lab_ind, :in_person_ind, :online_ind, :excursion_ind, :task_priority, :task_time_in_hours, :task_time_in_minutes, :task_note, :teacher_note, :status_id, :updated_by, :created_by)
    end
end
