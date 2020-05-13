class API::V1::CommentsController < APIController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @comments = Comment.where(event_id: params[:event_id])
  end

  # GET /api/v1/comments/:id
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /api/v1/comments
  def create
    @comment = Comment.new(comment_params)
    @comment.event = Event.find(params[:event_id])
    @comment.event_guest = EventGuest.find(params[:event_guest_id])


    if @comment.save
      render :show, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /api/v1/comments/1
  def update
    if @comment.update(comment_params)
      render :show, status: :ok, location: api_v1_comment_path(@comment)
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/comments/1
  def destroy
    @comment.destroy
    head :no_content
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def comment_params
    params.fetch(:comment, {}).permit(:id, :message, :event_id , :event_guest_id )
  end
end
