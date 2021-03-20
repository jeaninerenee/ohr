class MaterialContributorsController < ApplicationController
  before_action :set_material_contributor, only: %i[ show edit update destroy ]

  # GET /material_contributors or /material_contributors.json
  def index
    @material_contributors = MaterialContributor.all
  end

  # GET /material_contributors/1 or /material_contributors/1.json
  def show
  end

  # GET /material_contributors/new
  def new
    @material_contributor = MaterialContributor.new
  end

  # GET /material_contributors/1/edit
  def edit
  end

  # POST /material_contributors or /material_contributors.json
  def create
    @material_contributor = MaterialContributor.new(material_contributor_params)

    respond_to do |format|
      if @material_contributor.save
        format.html { redirect_to @material_contributor, notice: "Material contributor was successfully created." }
        format.json { render :show, status: :created, location: @material_contributor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @material_contributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_contributors/1 or /material_contributors/1.json
  def update
    respond_to do |format|
      if @material_contributor.update(material_contributor_params)
        format.html { redirect_to @material_contributor, notice: "Material contributor was successfully updated." }
        format.json { render :show, status: :ok, location: @material_contributor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @material_contributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_contributors/1 or /material_contributors/1.json
  def destroy
    @material_contributor.destroy
    respond_to do |format|
      format.html { redirect_to material_contributors_url, notice: "Material contributor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_contributor
      @material_contributor = MaterialContributor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def material_contributor_params
      params.require(:material_contributor).permit(:material_id, :contributor_type_id, :contributor_order, :prefix_name, :first_name, :middle_name, :last_name, :suffix_name, :status_id, :updated_by, :created_by)
    end
end
