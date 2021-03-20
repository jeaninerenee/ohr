class SyllabusPeopleController < ApplicationController
  before_action :set_syllabus_person, only: %i[ show edit update destroy ]

  # GET /syllabus_people or /syllabus_people.json
  def index
    @syllabus_people = SyllabusPerson.all
  end

  # GET /syllabus_people/1 or /syllabus_people/1.json
  def show
  end

  # GET /syllabus_people/new
  def new
    @syllabus_person = SyllabusPerson.new
  end

  # GET /syllabus_people/1/edit
  def edit
  end

  # POST /syllabus_people or /syllabus_people.json
  def create
    @syllabus_person = SyllabusPerson.new(syllabus_person_params)

    respond_to do |format|
      if @syllabus_person.save
        format.html { redirect_to @syllabus_person, notice: "Syllabus person was successfully created." }
        format.json { render :show, status: :created, location: @syllabus_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @syllabus_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syllabus_people/1 or /syllabus_people/1.json
  def update
    respond_to do |format|
      if @syllabus_person.update(syllabus_person_params)
        format.html { redirect_to @syllabus_person, notice: "Syllabus person was successfully updated." }
        format.json { render :show, status: :ok, location: @syllabus_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @syllabus_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syllabus_people/1 or /syllabus_people/1.json
  def destroy
    @syllabus_person.destroy
    respond_to do |format|
      format.html { redirect_to syllabus_people_url, notice: "Syllabus person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syllabus_person
      @syllabus_person = SyllabusPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def syllabus_person_params
      params.require(:syllabus_person).permit(:syllabus_id, :person_id, :teacher_ind, :primary_ind, :person_note, :person_order, :status_id, :updated_by, :created_by)
    end
end
