class SyllabusOrganizationsController < ApplicationController
  before_action :set_syllabus_organization, only: %i[ show edit update destroy ]

  # GET /syllabus_organizations or /syllabus_organizations.json
  def index
    @syllabus_organizations = SyllabusOrganization.all
  end

  # GET /syllabus_organizations/1 or /syllabus_organizations/1.json
  def show
  end

  # GET /syllabus_organizations/new
  def new
    @syllabus_organization = SyllabusOrganization.new
  end

  # GET /syllabus_organizations/1/edit
  def edit
  end

  # POST /syllabus_organizations or /syllabus_organizations.json
  def create
    @syllabus_organization = SyllabusOrganization.new(syllabus_organization_params)

    respond_to do |format|
      if @syllabus_organization.save
        format.html { redirect_to @syllabus_organization, notice: "Syllabus organization was successfully created." }
        format.json { render :show, status: :created, location: @syllabus_organization }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @syllabus_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syllabus_organizations/1 or /syllabus_organizations/1.json
  def update
    respond_to do |format|
      if @syllabus_organization.update(syllabus_organization_params)
        format.html { redirect_to @syllabus_organization, notice: "Syllabus organization was successfully updated." }
        format.json { render :show, status: :ok, location: @syllabus_organization }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @syllabus_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syllabus_organizations/1 or /syllabus_organizations/1.json
  def destroy
    @syllabus_organization.destroy
    respond_to do |format|
      format.html { redirect_to syllabus_organizations_url, notice: "Syllabus organization was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syllabus_organization
      @syllabus_organization = SyllabusOrganization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def syllabus_organization_params
      params.require(:syllabus_organization).permit(:syllabus_id, :organization_id, :primary_ind, :organization_note, :organization_order, :status_id, :updated_by, :created_by)
    end
end
