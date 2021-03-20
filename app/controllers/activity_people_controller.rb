class ActivityPeopleController < ApplicationController
  before_action :set_activity_person, only: %i[ show edit update destroy ]

  # GET /activity_people or /activity_people.json
  def index
    @activity_people = ActivityPerson.all
  end

  # GET /activity_people/1 or /activity_people/1.json
  def show
  end

  # GET /activity_people/new
  def new
    @activity_person = ActivityPerson.new
  end

  # GET /activity_people/1/edit
  def edit
  end

  # POST /activity_people or /activity_people.json
  def create
    @activity_person = ActivityPerson.new(activity_person_params)

    respond_to do |format|
      if @activity_person.save
        format.html { redirect_to @activity_person, notice: "Activity person was successfully created." }
        format.json { render :show, status: :created, location: @activity_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @activity_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_people/1 or /activity_people/1.json
  def update
    respond_to do |format|
      if @activity_person.update(activity_person_params)
        format.html { redirect_to @activity_person, notice: "Activity person was successfully updated." }
        format.json { render :show, status: :ok, location: @activity_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @activity_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_people/1 or /activity_people/1.json
  def destroy
    @activity_person.destroy
    respond_to do |format|
      format.html { redirect_to activity_people_url, notice: "Activity person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_person
      @activity_person = ActivityPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activity_person_params
      params.require(:activity_person).permit(:activity_id, :person_id, :teacher_ind, :person_note, :person_order, :status_id, :updated_by, :created_by)
    end
end
