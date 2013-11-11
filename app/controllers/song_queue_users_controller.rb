class SongQueueUsersController < ApplicationController
  before_action :set_song_queue_user, only: [:show, :edit, :update, :destroy]

  # GET /song_queue_users
  # GET /song_queue_users.json
  def index
    @song_queue_users = SongQueueUser.all
  end

  # GET /song_queue_users/1
  # GET /song_queue_users/1.json
  def show
  end

  # GET /song_queue_users/new
  def new
    @song_queue_user = SongQueueUser.new
  end

  # GET /song_queue_users/1/edit
  def edit
  end

  # POST /song_queue_users
  # POST /song_queue_users.json
  def create
    @song_queue_user = SongQueueUser.new(song_queue_user_params)

    respond_to do |format|
      if @song_queue_user.save
        format.html { redirect_to @song_queue_user, notice: 'Song queue user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @song_queue_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @song_queue_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /song_queue_users/1
  # PATCH/PUT /song_queue_users/1.json
  def update
    respond_to do |format|
      if @song_queue_user.update(song_queue_user_params)
        format.html { redirect_to @song_queue_user, notice: 'Song queue user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @song_queue_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_queue_users/1
  # DELETE /song_queue_users/1.json
  def destroy
    @song_queue_user.destroy
    respond_to do |format|
      format.html { redirect_to song_queue_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_queue_user
      @song_queue_user = SongQueueUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_queue_user_params
      params.require(:song_queue_user).permit(:song_queue_id, :user_id, :like, :dislike)
    end
end
