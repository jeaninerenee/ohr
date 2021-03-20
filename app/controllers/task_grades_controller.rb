class TaskGradesController < ApplicationController
  before_action :set_task_grade, only: %i[ show edit update destroy ]

  # GET /task_grades or /task_grades.json
  def index
    @task_grades = TaskGrade.all
  end

  # GET /task_grades/1 or /task_grades/1.json
  def show
  end

  # GET /task_grades/new
  def new
    @task_grade = TaskGrade.new
  end

  # GET /task_grades/1/edit
  def edit
  end

  # POST /task_grades or /task_grades.json
  def create
    @task_grade = TaskGrade.new(task_grade_params)

    respond_to do |format|
      if @task_grade.save
        format.html { redirect_to @task_grade, notice: "Task grade was successfully created." }
        format.json { render :show, status: :created, location: @task_grade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_grades/1 or /task_grades/1.json
  def update
    respond_to do |format|
      if @task_grade.update(task_grade_params)
        format.html { redirect_to @task_grade, notice: "Task grade was successfully updated." }
        format.json { render :show, status: :ok, location: @task_grade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_grades/1 or /task_grades/1.json
  def destroy
    @task_grade.destroy
    respond_to do |format|
      format.html { redirect_to task_grades_url, notice: "Task grade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_grade
      @task_grade = TaskGrade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_grade_params
      params.require(:task_grade).permit(:task_id, :grade_type_id, :task_grade, :task_total_correct, :task_total_possible, :status_id, :updated_by, :created_by)
    end
end
