class AuthOrganizationsController < ApplicationController
  before_action :set_auth_organization, only: %i[ show edit update destroy ]

  # GET /auth_organizations or /auth_organizations.json
  def index
    @auth_organizations = AuthOrganization.all
  end

  # GET /auth_organizations/1 or /auth_organizations/1.json
  def show
  end

  # GET /auth_organizations/new
  def new
    @auth_organization = AuthOrganization.new
  end

  # GET /auth_organizations/1/edit
  def edit
  end

  # POST /auth_organizations or /auth_organizations.json
  def create
    @auth_organization = AuthOrganization.new(auth_organization_params)

    respond_to do |format|
      if @auth_organization.save
        format.html { redirect_to @auth_organization, notice: "Auth organization was successfully created." }
        format.json { render :show, status: :created, location: @auth_organization }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @auth_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auth_organizations/1 or /auth_organizations/1.json
  def update
    respond_to do |format|
      if @auth_organization.update(auth_organization_params)
        format.html { redirect_to @auth_organization, notice: "Auth organization was successfully updated." }
        format.json { render :show, status: :ok, location: @auth_organization }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @auth_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auth_organizations/1 or /auth_organizations/1.json
  def destroy
    @auth_organization.destroy
    respond_to do |format|
      format.html { redirect_to auth_organizations_url, notice: "Auth organization was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auth_organization
      @auth_organization = AuthOrganization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def auth_organization_params
      params.require(:auth_organization).permit(:organization_name, :auth_account_id, :role_id, :status_id, :updated_by, :created_by)
    end
end
