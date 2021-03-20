class StudentYearsController < ApplicationController
  before_action :set_student_year, only: %i[ show edit update destroy ]

  # GET /student_years or /student_years.json
  def index
    @student_years = StudentYear.all
  end

  # GET /student_years/1 or /student_years/1.json
  def show
  end

  # GET /student_years/new
  def new
    @student_year = StudentYear.new
  end

  # GET /student_years/1/edit
  def edit
  end

  # POST /student_years or /student_years.json
  def create
    @student_year = StudentYear.new(student_year_params)

    respond_to do |format|
      if @student_year.save
        format.html { redirect_to @student_year, notice: "Student year was successfully created." }
        format.json { render :show, status: :created, location: @student_year }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_years/1 or /student_years/1.json
  def update
    respond_to do |format|
      if @student_year.update(student_year_params)
        format.html { redirect_to @student_year, notice: "Student year was successfully updated." }
        format.json { render :show, status: :ok, location: @student_year }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_years/1 or /student_years/1.json
  def destroy
    @student_year.destroy
    respond_to do |format|
      format.html { redirect_to student_years_url, notice: "Student year was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_year
      @student_year = StudentYear.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_year_params
      params.require(:student_year).permit(:auth_account_id, :person_id, :grade_id, :year_id, :start_date, :end_date, :done_ind, :status_id, :updated_by, :created_by)
    end
end
