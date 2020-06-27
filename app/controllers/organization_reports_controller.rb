class OrganizationReportsController < ApplicationController
  before_action :set_organization_report, only: [:show, :edit, :update, :destroy]

  # GET /organization_reports
  # GET /organization_reports.json
  def index
    @organization_reports = OrganizationReport.all
  end

  # GET /organization_reports/1
  # GET /organization_reports/1.json
  def show
  end

  # GET /organization_reports/new
  def new
    @organization_report = OrganizationReport.new
    @organization = Organization.find(params[:organization_id])
  end

  # GET /organization_reports/1/edit
  def edit
  end

  # POST /organization_reports
  # POST /organization_reports.json
  def create
    @organization_report = OrganizationReport.new(organization_report_params)

    respond_to do |format|
      if @organization_report.save
        format.html { redirect_to root_path, notice: 'Organization report was successfully created.' }
        format.json { render :show, status: :created, location: @organization_report }
      else
        format.html { render :new }
        format.json { render json: @organization_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_reports/1
  # PATCH/PUT /organization_reports/1.json
  def update
    respond_to do |format|
      if @organization_report.update(organization_report_params)
        format.html { redirect_to @organization_report, notice: 'Organization report was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization_report }
      else
        format.html { render :edit }
        format.json { render json: @organization_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_reports/1
  # DELETE /organization_reports/1.json
  def destroy
    @organization_report.destroy
    respond_to do |format|
      format.html { redirect_to organization_reports_url, notice: 'Organization report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_report
      @organization_report = OrganizationReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_report_params
      params.fetch(:organization_report, {}).permit(:id, :organization_id,:user_id, :message)
    end
end
