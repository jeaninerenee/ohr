class ActivityMaterialsController < ApplicationController
  before_action :set_activity_material, only: %i[ show edit update destroy ]

  # GET /activity_materials or /activity_materials.json
  def index
    @activity_materials = ActivityMaterial.all
  end

  # GET /activity_materials/1 or /activity_materials/1.json
  def show
  end

  # GET /activity_materials/new
  def new
    @activity_material = ActivityMaterial.new
  end

  # GET /activity_materials/1/edit
  def edit
  end

  # POST /activity_materials or /activity_materials.json
  def create
    @activity_material = ActivityMaterial.new(activity_material_params)

    respond_to do |format|
      if @activity_material.save
        format.html { redirect_to @activity_material, notice: "Activity material was successfully created." }
        format.json { render :show, status: :created, location: @activity_material }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @activity_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_materials/1 or /activity_materials/1.json
  def update
    respond_to do |format|
      if @activity_material.update(activity_material_params)
        format.html { redirect_to @activity_material, notice: "Activity material was successfully updated." }
        format.json { render :show, status: :ok, location: @activity_material }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @activity_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_materials/1 or /activity_materials/1.json
  def destroy
    @activity_material.destroy
    respond_to do |format|
      format.html { redirect_to activity_materials_url, notice: "Activity material was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_material
      @activity_material = ActivityMaterial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activity_material_params
      params.require(:activity_material).permit(:activity_id, :material_id, :activity_material_order, :status_id, :updated_by, :created_by)
    end
end
