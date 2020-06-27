class EventReportsController < ApplicationController
  before_action :set_event_report, only: [:show, :edit, :update, :destroy]

  # GET /event_reports
  # GET /event_reports.json
  def index
    @event_reports = EventReport.all
  end

  # GET /event_reports/1
  # GET /event_reports/1.json
  def show
  end

  # GET /event_reports/new
  def new
    @event_report = EventReport.new
    @event = Event.find(params[:event_id])
  end

  # GET /event_reports/1/edit
  def edit
  end

  # POST /event_reports
  # POST /event_reports.json
  def create
    @event_report = EventReport.new(event_report_params)

    respond_to do |format|
      if @event_report.save
        format.html { redirect_to root_path, notice: 'Event report was successfully created.' }
        format.json { render :show, status: :created, location: @event_report }
      else
        format.html { render :new }
        format.json { render json: @event_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_reports/1
  # PATCH/PUT /event_reports/1.json
  def update
    respond_to do |format|
      if @event_report.update(event_report_params)
        format.html { redirect_to @event_report, notice: 'Event report was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_report }
      else
        format.html { render :edit }
        format.json { render json: @event_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_reports/1
  # DELETE /event_reports/1.json
  def destroy
    @event_report.destroy
    respond_to do |format|
      format.html { redirect_to event_reports_url, notice: 'Event report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_report
      @event_report = EventReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_report_params
      params.fetch(:event_report, {}).permit(:id, :event_id,:user_id, :message)
    end
end
