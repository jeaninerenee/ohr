class TaskSyllabusRelationsController < ApplicationController
  before_action :set_task_syllabus_relation, only: %i[ show edit update destroy ]

  # GET /task_syllabus_relations or /task_syllabus_relations.json
  def index
    @task_syllabus_relations = TaskSyllabusRelation.all
  end

  # GET /task_syllabus_relations/1 or /task_syllabus_relations/1.json
  def show
  end

  # GET /task_syllabus_relations/new
  def new
    @task_syllabus_relation = TaskSyllabusRelation.new
  end

  # GET /task_syllabus_relations/1/edit
  def edit
  end

  # POST /task_syllabus_relations or /task_syllabus_relations.json
  def create
    @task_syllabus_relation = TaskSyllabusRelation.new(task_syllabus_relation_params)

    respond_to do |format|
      if @task_syllabus_relation.save
        format.html { redirect_to @task_syllabus_relation, notice: "Task syllabus relation was successfully created." }
        format.json { render :show, status: :created, location: @task_syllabus_relation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task_syllabus_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_syllabus_relations/1 or /task_syllabus_relations/1.json
  def update
    respond_to do |format|
      if @task_syllabus_relation.update(task_syllabus_relation_params)
        format.html { redirect_to @task_syllabus_relation, notice: "Task syllabus relation was successfully updated." }
        format.json { render :show, status: :ok, location: @task_syllabus_relation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task_syllabus_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_syllabus_relations/1 or /task_syllabus_relations/1.json
  def destroy
    @task_syllabus_relation.destroy
    respond_to do |format|
      format.html { redirect_to task_syllabus_relations_url, notice: "Task syllabus relation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_syllabus_relation
      @task_syllabus_relation = TaskSyllabusRelation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_syllabus_relation_params
      params.require(:task_syllabus_relation).permit(:task_id, :syllabus_task_id, :syllabus_start_date, :syllabus_end_date, :status_id, :updated_by, :created_by)
    end
end
