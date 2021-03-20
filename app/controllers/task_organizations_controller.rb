class TaskOrganizationsController < ApplicationController
  before_action :set_task_organization, only: %i[ show edit update destroy ]

  # GET /task_organizations or /task_organizations.json
  def index
    @task_organizations = TaskOrganization.all
  end

  # GET /task_organizations/1 or /task_organizations/1.json
  def show
  end

  # GET /task_organizations/new
  def new
    @task_organization = TaskOrganization.new
  end

  # GET /task_organizations/1/edit
  def edit
  end

  # POST /task_organizations or /task_organizations.json
  def create
    @task_organization = TaskOrganization.new(task_organization_params)

    respond_to do |format|
      if @task_organization.save
        format.html { redirect_to @task_organization, notice: "Task organization was successfully created." }
        format.json { render :show, status: :created, location: @task_organization }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_organizations/1 or /task_organizations/1.json
  def update
    respond_to do |format|
      if @task_organization.update(task_organization_params)
        format.html { redirect_to @task_organization, notice: "Task organization was successfully updated." }
        format.json { render :show, status: :ok, location: @task_organization }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_organizations/1 or /task_organizations/1.json
  def destroy
    @task_organization.destroy
    respond_to do |format|
      format.html { redirect_to task_organizations_url, notice: "Task organization was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_organization
      @task_organization = TaskOrganization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_organization_params
      params.require(:task_organization).permit(:task_id, :organization_id, :primary_ind, :organization_note, :organization_order, :status_id, :updated_by, :created_by)
    end
end
