class SyllabusTaskPeopleController < ApplicationController
  before_action :set_syllabus_task_person, only: %i[ show edit update destroy ]

  # GET /syllabus_task_people or /syllabus_task_people.json
  def index
    @syllabus_task_people = SyllabusTaskPerson.all
  end

  # GET /syllabus_task_people/1 or /syllabus_task_people/1.json
  def show
  end

  # GET /syllabus_task_people/new
  def new
    @syllabus_task_person = SyllabusTaskPerson.new
  end

  # GET /syllabus_task_people/1/edit
  def edit
  end

  # POST /syllabus_task_people or /syllabus_task_people.json
  def create
    @syllabus_task_person = SyllabusTaskPerson.new(syllabus_task_person_params)

    respond_to do |format|
      if @syllabus_task_person.save
        format.html { redirect_to @syllabus_task_person, notice: "Syllabus task person was successfully created." }
        format.json { render :show, status: :created, location: @syllabus_task_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @syllabus_task_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syllabus_task_people/1 or /syllabus_task_people/1.json
  def update
    respond_to do |format|
      if @syllabus_task_person.update(syllabus_task_person_params)
        format.html { redirect_to @syllabus_task_person, notice: "Syllabus task person was successfully updated." }
        format.json { render :show, status: :ok, location: @syllabus_task_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @syllabus_task_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syllabus_task_people/1 or /syllabus_task_people/1.json
  def destroy
    @syllabus_task_person.destroy
    respond_to do |format|
      format.html { redirect_to syllabus_task_people_url, notice: "Syllabus task person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syllabus_task_person
      @syllabus_task_person = SyllabusTaskPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def syllabus_task_person_params
      params.require(:syllabus_task_person).permit(:syllabus_task_id, :person_id, :teacher_ind, :primary_ind, :person_note, :person_order, :status_id, :updated_by, :created_by)
    end
end
