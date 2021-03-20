class AuthAccountsController < ApplicationController
  before_action :set_auth_account, only: %i[ show edit update destroy ]

  # GET /auth_accounts or /auth_accounts.json
  def index
    @auth_accounts = AuthAccount.all
  end

  # GET /auth_accounts/1 or /auth_accounts/1.json
  def show
  end

  # GET /auth_accounts/new
  def new
    @auth_account = AuthAccount.new
  end

  # GET /auth_accounts/1/edit
  def edit
  end

  # POST /auth_accounts or /auth_accounts.json
  def create
    @auth_account = AuthAccount.new(auth_account_params)

    respond_to do |format|
      if @auth_account.save
        format.html { redirect_to @auth_account, notice: "Auth account was successfully created." }
        format.json { render :show, status: :created, location: @auth_account }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @auth_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auth_accounts/1 or /auth_accounts/1.json
  def update
    respond_to do |format|
      if @auth_account.update(auth_account_params)
        format.html { redirect_to @auth_account, notice: "Auth account was successfully updated." }
        format.json { render :show, status: :ok, location: @auth_account }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @auth_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auth_accounts/1 or /auth_accounts/1.json
  def destroy
    @auth_account.destroy
    respond_to do |format|
      format.html { redirect_to auth_accounts_url, notice: "Auth account was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auth_account
      @auth_account = AuthAccount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def auth_account_params
      params.require(:auth_account).permit(:account_name, :plan_id, :status_id, :updated_by, :created_by)
    end
end
