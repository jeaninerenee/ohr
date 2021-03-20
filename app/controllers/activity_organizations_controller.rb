class ActivityOrganizationsController < ApplicationController
  before_action :set_activity_organization, only: %i[ show edit update destroy ]

  # GET /activity_organizations or /activity_organizations.json
  def index
    @activity_organizations = ActivityOrganization.all
  end

  # GET /activity_organizations/1 or /activity_organizations/1.json
  def show
  end

  # GET /activity_organizations/new
  def new
    @activity_organization = ActivityOrganization.new
  end

  # GET /activity_organizations/1/edit
  def edit
  end

  # POST /activity_organizations or /activity_organizations.json
  def create
    @activity_organization = ActivityOrganization.new(activity_organization_params)

    respond_to do |format|
      if @activity_organization.save
        format.html { redirect_to @activity_organization, notice: "Activity organization was successfully created." }
        format.json { render :show, status: :created, location: @activity_organization }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @activity_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_organizations/1 or /activity_organizations/1.json
  def update
    respond_to do |format|
      if @activity_organization.update(activity_organization_params)
        format.html { redirect_to @activity_organization, notice: "Activity organization was successfully updated." }
        format.json { render :show, status: :ok, location: @activity_organization }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @activity_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_organizations/1 or /activity_organizations/1.json
  def destroy
    @activity_organization.destroy
    respond_to do |format|
      format.html { redirect_to activity_organizations_url, notice: "Activity organization was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_organization
      @activity_organization = ActivityOrganization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activity_organization_params
      params.require(:activity_organization).permit(:activity_id, :organization_id, :organization_note, :organization_order, :status_id, :updated_by, :created_by)
    end
end
