class AuthMembershipsController < ApplicationController
  before_action :set_auth_membership, only: %i[ show edit update destroy ]

  # GET /auth_memberships or /auth_memberships.json
  def index
    @auth_memberships = AuthMembership.all
  end

  # GET /auth_memberships/1 or /auth_memberships/1.json
  def show
  end

  # GET /auth_memberships/new
  def new
    @auth_membership = AuthMembership.new
  end

  # GET /auth_memberships/1/edit
  def edit
  end

  # POST /auth_memberships or /auth_memberships.json
  def create
    @auth_membership = AuthMembership.new(auth_membership_params)

    respond_to do |format|
      if @auth_membership.save
        format.html { redirect_to @auth_membership, notice: "Auth membership was successfully created." }
        format.json { render :show, status: :created, location: @auth_membership }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @auth_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auth_memberships/1 or /auth_memberships/1.json
  def update
    respond_to do |format|
      if @auth_membership.update(auth_membership_params)
        format.html { redirect_to @auth_membership, notice: "Auth membership was successfully updated." }
        format.json { render :show, status: :ok, location: @auth_membership }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @auth_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auth_memberships/1 or /auth_memberships/1.json
  def destroy
    @auth_membership.destroy
    respond_to do |format|
      format.html { redirect_to auth_memberships_url, notice: "Auth membership was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auth_membership
      @auth_membership = AuthMembership.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def auth_membership_params
      params.require(:auth_membership).permit(:auth_user_id, :auth_organization_id, :role_id, :account_email, :account_phone, :status_id, :updated_by, :created_by)
    end
end
