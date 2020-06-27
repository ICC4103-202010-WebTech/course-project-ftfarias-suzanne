class CommentReportsController < ApplicationController
  before_action :set_comment_report, only: [:show, :edit, :update, :destroy]

  # GET /comment_reports
  # GET /comment_reports.json
  def index
    @comment_reports = CommentReport.all
  end

  # GET /comment_reports/1
  # GET /comment_reports/1.json
  def show
  end

  # GET /comment_reports/new
  def new
    @comment_report = CommentReport.new
    @comment = Comment.find(params[:comment_id])

  end

  # GET /comment_reports/1/edit
  def edit
  end

  # POST /comment_reports
  # POST /comment_reports.json
  def create
    @comment_report = CommentReport.new(comment_report_params)

    respond_to do |format|
      if @comment_report.save
        format.html { redirect_to root_path, notice: 'Comment report was successfully created.' }
        format.json { render :show, status: :created, location: @comment_report }
      else
        format.html { render :new }
        format.json { render json: @comment_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_reports/1
  # PATCH/PUT /comment_reports/1.json
  def update
    respond_to do |format|
      if @comment_report.update(comment_report_params)
        format.html { redirect_to @comment_report, notice: 'Comment report was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_report }
      else
        format.html { render :edit }
        format.json { render json: @comment_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_reports/1
  # DELETE /comment_reports/1.json
  def destroy
    @comment_report.destroy
    respond_to do |format|
      format.html { redirect_to comment_reports_url, notice: 'Comment report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_report
      @comment_report = CommentReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_report_params
      params.fetch(:comment_report, {}).permit(:id, :comment_id,:user_id, :message)
    end
end
