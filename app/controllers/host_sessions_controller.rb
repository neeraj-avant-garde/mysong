class HostSessionsController < ApplicationController
  before_action :set_host_session, only: [:show, :edit, :update, :destroy]

  # GET /host_sessions
  # GET /host_sessions.json
  def index
    @host_sessions = HostSession.all
  end

  # GET /host_sessions/1
  # GET /host_sessions/1.json
  def show
  end

  # GET /host_sessions/new
  def new
    @host_session = HostSession.new
  end

  # GET /host_sessions/1/edit
  def edit
  end

  # POST /host_sessions
  # POST /host_sessions.json
  def create
    @host_session = HostSession.new(host_session_params)

    respond_to do |format|
      if @host_session.save
        format.html { redirect_to @host_session, notice: 'Host session was successfully created.' }
        format.json { render action: 'show', status: :created, location: @host_session }
      else
        format.html { render action: 'new' }
        format.json { render json: @host_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /host_sessions/1
  # PATCH/PUT /host_sessions/1.json
  def update
    respond_to do |format|
      if @host_session.update(host_session_params)
        format.html { redirect_to @host_session, notice: 'Host session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @host_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /host_sessions/1
  # DELETE /host_sessions/1.json
  def destroy
    @host_session.destroy
    respond_to do |format|
      format.html { redirect_to host_sessions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_host_session
      @host_session = HostSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def host_session_params
      params.require(:host_session).permit(:host_id, :host_session_id, :is_active)
    end
end
