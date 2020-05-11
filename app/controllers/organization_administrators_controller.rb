class OrganizationAdministratorsController < ApplicationController
  before_action :set_organization_administrator, only: [:show, :edit, :update, :destroy]

  # GET /organization_administrators
  # GET /organization_administrators.json
  def index
    @organization_administrators = OrganizationAdministrator.all
  end

  # GET /organization_administrators/1
  # GET /organization_administrators/1.json
  def show
  end

  # GET /organization_administrators/new
  def new
    @organization_administrator = OrganizationAdministrator.new
  end

  # GET /organization_administrators/1/edit
  def edit
  end

  # POST /organization_administrators
  # POST /organization_administrators.json
  def create
    @organization_administrator = OrganizationAdministrator.new(organization_administrator_params)

    respond_to do |format|
      if @organization_administrator.save
        format.html { redirect_to @organization_administrator, notice: 'Organization administrator was successfully created.' }
        format.json { render :show, status: :created, location: @organization_administrator }
      else
        format.html { render :new }
        format.json { render json: @organization_administrator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_administrators/1
  # PATCH/PUT /organization_administrators/1.json
  def update
    respond_to do |format|
      if @organization_administrator.update(organization_administrator_params)
        format.html { redirect_to @organization_administrator, notice: 'Organization administrator was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization_administrator }
      else
        format.html { render :edit }
        format.json { render json: @organization_administrator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_administrators/1
  # DELETE /organization_administrators/1.json
  def destroy
    @organization_administrator.destroy
    respond_to do |format|
      format.html { redirect_to organization_administrators_url, notice: 'Organization administrator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_administrator
      @organization_administrator = OrganizationAdministrator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_administrator_params
      params.fetch(:organization_administrator, {})
    end
end
