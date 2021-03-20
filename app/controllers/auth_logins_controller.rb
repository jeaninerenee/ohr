class AuthLoginsController < ApplicationController
  before_action :set_auth_login, only: %i[ show edit update destroy ]

  # GET /auth_logins or /auth_logins.json
  def index
    @auth_logins = AuthLogin.all
  end

  # GET /auth_logins/1 or /auth_logins/1.json
  def show
  end

  # GET /auth_logins/new
  def new
    @auth_login = AuthLogin.new
  end

  # GET /auth_logins/1/edit
  def edit
  end

  # POST /auth_logins or /auth_logins.json
  def create
    @auth_login = AuthLogin.new(auth_login_params)

    respond_to do |format|
      if @auth_login.save
        format.html { redirect_to @auth_login, notice: "Auth login was successfully created." }
        format.json { render :show, status: :created, location: @auth_login }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @auth_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auth_logins/1 or /auth_logins/1.json
  def update
    respond_to do |format|
      if @auth_login.update(auth_login_params)
        format.html { redirect_to @auth_login, notice: "Auth login was successfully updated." }
        format.json { render :show, status: :ok, location: @auth_login }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @auth_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auth_logins/1 or /auth_logins/1.json
  def destroy
    @auth_login.destroy
    respond_to do |format|
      format.html { redirect_to auth_logins_url, notice: "Auth login was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auth_login
      @auth_login = AuthLogin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def auth_login_params
      params.require(:auth_login).permit(:auth_user_id, :devise_user_id, :status_id, :updated_by, :created_by)
    end
end
