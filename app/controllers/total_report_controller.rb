class TotalReportController < ApplicationController

  # GET /total_report
  # GET /total_report.json
  def show
    @event_reports = EventReport.all
    @organization_reports = OrganizationReport.all
    @comment_reports = CommentReport.all
  end
end
