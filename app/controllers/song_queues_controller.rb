class SongQueuesController < ApplicationController
  before_action :set_song_queue, only: [:show, :edit, :update, :destroy]

  # GET /song_queues
  # GET /song_queues.json
  def index
    @song_queues = SongQueue.all
  end

  # GET /song_queues/1
  # GET /song_queues/1.json
  def show
  end

  # GET /song_queues/new
  def new
    @song_queue = SongQueue.new
  end

  # GET /song_queues/1/edit
  def edit
  end

  # POST /song_queues
  # POST /song_queues.json
  def create
    @song_queue = SongQueue.new(song_queue_params)

    respond_to do |format|
      if @song_queue.save
        format.html { redirect_to @song_queue, notice: 'Song queue was successfully created.' }
        format.json { render action: 'show', status: :created, location: @song_queue }
      else
        format.html { render action: 'new' }
        format.json { render json: @song_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /song_queues/1
  # PATCH/PUT /song_queues/1.json
  def update
    respond_to do |format|
      if @song_queue.update(song_queue_params)
        format.html { redirect_to @song_queue, notice: 'Song queue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @song_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_queues/1
  # DELETE /song_queues/1.json
  def destroy
    @song_queue.destroy
    respond_to do |format|
      format.html { redirect_to song_queues_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_queue
      @song_queue = SongQueue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_queue_params
      params.require(:song_queue).permit(:host_id, :song_id, :user_id, :message, :message_approved, :priority, :status)
    end
end
