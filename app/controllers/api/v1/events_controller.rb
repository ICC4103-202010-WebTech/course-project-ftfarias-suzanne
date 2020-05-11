class API::V1::EventsController < APIController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /api/v1/events/:id
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /api/v1/events
  def create
    @event = Event.new(event_params)
    @event.event_creator = EventCreator.find(params[:event_creator_id])
    @event.organization = Organization.find(params[:organization_id])


    if @event.save
      render :show, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /api/v1/events/1
  def update
    if @event.update(event_params)
      render :show, status: :ok, location: api_v1_events_path(@event)
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/events/1
  def destroy
    @event.destroy
    head :no_content
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def event_params
    params.fetch(:event, {}).permit(:id, :name, :location , :description, :picture, :publicEvent, :event_creator_id, :organization_id )
  end
end
