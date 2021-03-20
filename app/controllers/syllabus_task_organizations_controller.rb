class SyllabusTaskOrganizationsController < ApplicationController
  before_action :set_syllabus_task_organization, only: %i[ show edit update destroy ]

  # GET /syllabus_task_organizations or /syllabus_task_organizations.json
  def index
    @syllabus_task_organizations = SyllabusTaskOrganization.all
  end

  # GET /syllabus_task_organizations/1 or /syllabus_task_organizations/1.json
  def show
  end

  # GET /syllabus_task_organizations/new
  def new
    @syllabus_task_organization = SyllabusTaskOrganization.new
  end

  # GET /syllabus_task_organizations/1/edit
  def edit
  end

  # POST /syllabus_task_organizations or /syllabus_task_organizations.json
  def create
    @syllabus_task_organization = SyllabusTaskOrganization.new(syllabus_task_organization_params)

    respond_to do |format|
      if @syllabus_task_organization.save
        format.html { redirect_to @syllabus_task_organization, notice: "Syllabus task organization was successfully created." }
        format.json { render :show, status: :created, location: @syllabus_task_organization }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @syllabus_task_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syllabus_task_organizations/1 or /syllabus_task_organizations/1.json
  def update
    respond_to do |format|
      if @syllabus_task_organization.update(syllabus_task_organization_params)
        format.html { redirect_to @syllabus_task_organization, notice: "Syllabus task organization was successfully updated." }
        format.json { render :show, status: :ok, location: @syllabus_task_organization }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @syllabus_task_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syllabus_task_organizations/1 or /syllabus_task_organizations/1.json
  def destroy
    @syllabus_task_organization.destroy
    respond_to do |format|
      format.html { redirect_to syllabus_task_organizations_url, notice: "Syllabus task organization was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syllabus_task_organization
      @syllabus_task_organization = SyllabusTaskOrganization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def syllabus_task_organization_params
      params.require(:syllabus_task_organization).permit(:syllabus_task_id, :organization_id, :primary_ind, :organization_note, :organization_order, :status_id, :updated_by, :created_by)
    end
end
