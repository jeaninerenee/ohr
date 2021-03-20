class ContributorTypesController < ApplicationController
  before_action :set_contributor_type, only: %i[ show edit update destroy ]

  # GET /contributor_types or /contributor_types.json
  def index
    @contributor_types = ContributorType.all
  end

  # GET /contributor_types/1 or /contributor_types/1.json
  def show
  end

  # GET /contributor_types/new
  def new
    @contributor_type = ContributorType.new
  end

  # GET /contributor_types/1/edit
  def edit
  end

  # POST /contributor_types or /contributor_types.json
  def create
    @contributor_type = ContributorType.new(contributor_type_params)

    respond_to do |format|
      if @contributor_type.save
        format.html { redirect_to @contributor_type, notice: "Contributor type was successfully created." }
        format.json { render :show, status: :created, location: @contributor_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contributor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contributor_types/1 or /contributor_types/1.json
  def update
    respond_to do |format|
      if @contributor_type.update(contributor_type_params)
        format.html { redirect_to @contributor_type, notice: "Contributor type was successfully updated." }
        format.json { render :show, status: :ok, location: @contributor_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contributor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contributor_types/1 or /contributor_types/1.json
  def destroy
    @contributor_type.destroy
    respond_to do |format|
      format.html { redirect_to contributor_types_url, notice: "Contributor type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contributor_type
      @contributor_type = ContributorType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contributor_type_params
      params.require(:contributor_type).permit(:auth_account_id, :contributor_type, :contributor_type_order, :default_ind, :status_id, :updated_by, :created_by)
    end
end
