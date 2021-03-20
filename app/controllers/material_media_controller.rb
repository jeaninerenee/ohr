class MaterialMediaController < ApplicationController
  before_action :set_material_medium, only: %i[ show edit update destroy ]

  # GET /material_media or /material_media.json
  def index
    @material_media = MaterialMedium.all
  end

  # GET /material_media/1 or /material_media/1.json
  def show
  end

  # GET /material_media/new
  def new
    @material_medium = MaterialMedium.new
  end

  # GET /material_media/1/edit
  def edit
  end

  # POST /material_media or /material_media.json
  def create
    @material_medium = MaterialMedium.new(material_medium_params)

    respond_to do |format|
      if @material_medium.save
        format.html { redirect_to @material_medium, notice: "Material medium was successfully created." }
        format.json { render :show, status: :created, location: @material_medium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @material_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_media/1 or /material_media/1.json
  def update
    respond_to do |format|
      if @material_medium.update(material_medium_params)
        format.html { redirect_to @material_medium, notice: "Material medium was successfully updated." }
        format.json { render :show, status: :ok, location: @material_medium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @material_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_media/1 or /material_media/1.json
  def destroy
    @material_medium.destroy
    respond_to do |format|
      format.html { redirect_to material_media_url, notice: "Material medium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_medium
      @material_medium = MaterialMedium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def material_medium_params
      params.require(:material_medium).permit(:auth_account_id, :material_medium, :material_medium_order, :default_ind, :status_id, :updated_by, :created_by)
    end
end
