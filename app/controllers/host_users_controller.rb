class HostUsersController < ApplicationController
  before_action :set_host_user, only: [:show, :edit, :update, :destroy]

  # GET /host_users
  # GET /host_users.json
  def index
    @host_users = HostUser.all
  end

  # GET /host_users/1
  # GET /host_users/1.json
  def show
  end

  # GET /host_users/new
  def new
    @host_user = HostUser.new
  end

  # GET /host_users/1/edit
  def edit
  end

  # POST /host_users
  # POST /host_users.json
  def create
    @host_user = HostUser.new(host_user_params)

    respond_to do |format|
      if @host_user.save
        format.html { redirect_to @host_user, notice: 'Host user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @host_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @host_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /host_users/1
  # PATCH/PUT /host_users/1.json
  def update
    respond_to do |format|
      if @host_user.update(host_user_params)
        format.html { redirect_to @host_user, notice: 'Host user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @host_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /host_users/1
  # DELETE /host_users/1.json
  def destroy
    @host_user.destroy
    respond_to do |format|
      format.html { redirect_to host_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_host_user
      @host_user = HostUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def host_user_params
      params.require(:host_user).permit(:activity, :old_visit)
    end
end
