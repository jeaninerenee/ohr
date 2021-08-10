class YearsController < ApplicationController
  before_action :set_year, only: %i[ show edit update destroy ]
  before_action :authenticate_devise_user!, except: [:index, :show] # JR, 2021089.  If user is not authenticated then don't let them do anything except see the index page and see the show page.
  
  # GET /years or /years.json
  def index
    @years = Year.all
  end

  # GET /years/1 or /years/1.json
  def show
  end

  # GET /years/new
  def new
    @year = Year.new
  end

  # GET /years/1/edit
  def edit
  end

  # POST /years or /years.json
  def create
    @year = Year.new(year_params)

    respond_to do |format|
      if @year.save
        format.html { redirect_to @year, notice: "Year was successfully created." }
        format.json { render :show, status: :created, location: @year }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /years/1 or /years/1.json
  def update
    respond_to do |format|
      if @year.update(year_params)
        format.html { redirect_to @year, notice: "Year was successfully updated." }
        format.json { render :show, status: :ok, location: @year }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /years/1 or /years/1.json
  def destroy
    @year.destroy
    respond_to do |format|
      format.html { redirect_to years_url, notice: "Year was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_year
      @year = Year.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def year_params
      params.require(:year).permit(:auth_account_id, :year_start, :year_end, :year_short_name, :year_long_name, :default_ind, :status_id, :updated_by, :created_by)
    end
end
