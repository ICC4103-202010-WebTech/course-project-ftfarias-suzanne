class StartDatePollsController < ApplicationController
  before_action :set_start_date_poll, only: [:show, :edit, :update, :destroy]

  # GET /start_date_polls
  # GET /start_date_polls.json
  def index
    @start_date_polls = StartDatePoll.all
  end

  # GET /start_date_polls/1
  # GET /start_date_polls/1.json
  def show
  end

  # GET /start_date_polls/new
  def new
    @start_date_poll = StartDatePoll.new
  end

  # GET /start_date_polls/1/edit
  def edit
  end

  # POST /start_date_polls
  # POST /start_date_polls.json
  def create
    @start_date_poll = StartDatePoll.new(start_date_poll_params)

    respond_to do |format|
      if @start_date_poll.save
        format.html { redirect_to @start_date_poll, notice: 'Start date poll was successfully created.' }
        format.json { render :show, status: :created, location: @start_date_poll }
      else
        format.html { render :new }
        format.json { render json: @start_date_poll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_date_polls/1
  # PATCH/PUT /start_date_polls/1.json
  def update
    respond_to do |format|
      if @start_date_poll.update(start_date_poll_params)
        format.html { redirect_to @start_date_poll, notice: 'Start date poll was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_date_poll }
      else
        format.html { render :edit }
        format.json { render json: @start_date_poll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_date_polls/1
  # DELETE /start_date_polls/1.json
  def destroy
    @start_date_poll.destroy
    respond_to do |format|
      format.html { redirect_to start_date_polls_url, notice: 'Start date poll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_date_poll
      @start_date_poll = StartDatePoll.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def start_date_poll_params
      params.fetch(:start_date_poll, {})
    end
end
