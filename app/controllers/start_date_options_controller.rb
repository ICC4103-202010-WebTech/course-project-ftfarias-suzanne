class StartDateOptionsController < ApplicationController
  before_action :set_start_date_option, only: [:show, :edit, :update, :destroy]

  # GET /start_date_options
  # GET /start_date_options.json
  def index
    @start_date_options = StartDateOption.all
  end

  # GET /start_date_options/1
  # GET /start_date_options/1.json
  def show
  end

  # GET /start_date_options/new
  def new
    @start_date_option = StartDateOption.new
  end

  # GET /start_date_options/1/edit
  def edit
  end

  # POST /start_date_options
  # POST /start_date_options.json
  def create
    @start_date_option = StartDateOption.new(start_date_option_params)

    respond_to do |format|
      if @start_date_option.save
        format.html { redirect_to @start_date_option, notice: 'Start date option was successfully created.' }
        format.json { render :show, status: :created, location: @start_date_option }
      else
        format.html { render :new }
        format.json { render json: @start_date_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_date_options/1
  # PATCH/PUT /start_date_options/1.json
  def update
    respond_to do |format|
      if @start_date_option.update(start_date_option_params)
        format.html { redirect_to @start_date_option, notice: 'Start date option was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_date_option }
      else
        format.html { render :edit }
        format.json { render json: @start_date_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_date_options/1
  # DELETE /start_date_options/1.json
  def destroy
    @start_date_option.destroy
    respond_to do |format|
      format.html { redirect_to start_date_options_url, notice: 'Start date option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_date_option
      @start_date_option = StartDateOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def start_date_option_params
      params.fetch(:start_date_option, {})
    end
end
