class YearWeeksController < ApplicationController
  before_action :set_year_week, only: %i[ show edit update destroy ]

  # GET /year_weeks or /year_weeks.json
  def index
    @year_weeks = YearWeek.all
  end

  # GET /year_weeks/1 or /year_weeks/1.json
  def show
  end

  # GET /year_weeks/new
  def new
    @year_week = YearWeek.new
  end

  # GET /year_weeks/1/edit
  def edit
  end

  # POST /year_weeks or /year_weeks.json
  def create
    @year_week = YearWeek.new(year_week_params)

    respond_to do |format|
      if @year_week.save
        format.html { redirect_to @year_week, notice: "Year week was successfully created." }
        format.json { render :show, status: :created, location: @year_week }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @year_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /year_weeks/1 or /year_weeks/1.json
  def update
    respond_to do |format|
      if @year_week.update(year_week_params)
        format.html { redirect_to @year_week, notice: "Year week was successfully updated." }
        format.json { render :show, status: :ok, location: @year_week }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @year_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /year_weeks/1 or /year_weeks/1.json
  def destroy
    @year_week.destroy
    respond_to do |format|
      format.html { redirect_to year_weeks_url, notice: "Year week was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_year_week
      @year_week = YearWeek.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def year_week_params
      params.require(:year_week).permit(:auth_account_id, :year_id, :week_number, :week_start_date, :week_end_date, :status_id, :updated_by, :created_by)
    end
end
