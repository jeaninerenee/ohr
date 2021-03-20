class TaskPeopleController < ApplicationController
  before_action :set_task_person, only: %i[ show edit update destroy ]

  # GET /task_people or /task_people.json
  def index
    @task_people = TaskPerson.all
  end

  # GET /task_people/1 or /task_people/1.json
  def show
  end

  # GET /task_people/new
  def new
    @task_person = TaskPerson.new
  end

  # GET /task_people/1/edit
  def edit
  end

  # POST /task_people or /task_people.json
  def create
    @task_person = TaskPerson.new(task_person_params)

    respond_to do |format|
      if @task_person.save
        format.html { redirect_to @task_person, notice: "Task person was successfully created." }
        format.json { render :show, status: :created, location: @task_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_people/1 or /task_people/1.json
  def update
    respond_to do |format|
      if @task_person.update(task_person_params)
        format.html { redirect_to @task_person, notice: "Task person was successfully updated." }
        format.json { render :show, status: :ok, location: @task_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_people/1 or /task_people/1.json
  def destroy
    @task_person.destroy
    respond_to do |format|
      format.html { redirect_to task_people_url, notice: "Task person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_person
      @task_person = TaskPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_person_params
      params.require(:task_person).permit(:task_id, :person_id, :teacher_ind, :primary_ind, :person_note, :person_order, :status_id, :updated_by, :created_by)
    end
end
