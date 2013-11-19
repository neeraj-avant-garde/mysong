class HostsController < ApplicationController
  before_action :set_host, only: [:show, :edit, :update, :destroy]

  # GET /hosts
  # GET /hosts.json
  def index
    @hosts = Host.all
  end

  # GET /hosts/1
  # GET /hosts/1.json
  def show
  end

  # GET /hosts/new
  def new
    @host = Host.new
  end

  # GET /hosts/1/edit
  def edit
  end

  # POST /hosts
  # POST /hosts.json
  def create
    params[:host][:avatar] = upload_and_return_file_name(params[:host][:avatar]) if params[:host][:avatar]

    @host = Host.new(host_params)

    respond_to do |format|
      if @host.save
        Notifier.send_signup_email(@host).deliver
        #ActionMailer::Base.mail(:from => "app19369326@heroku.com", :to => "#{@host.email}", :subject => "MySong app complete registration", :body => "Hi #{@host.name}, <br /> Verification code: #{@host.verification}<br /> To complete registration process please enter above verification code in your MySong app.").deliver
        format.html { redirect_to @host, notice: 'Host was successfully created.' }
        format.json {
          @utter = ["success"=> 1, "message"=> 'You are registered successfully', "data"=> @host ]
          render json: @utter, 
          status: :created
        }
      else
        format.html { render action: 'new' }
        format.json { 
          @utter = ["success"=> 0, "message"=> 'Please review errors', "data"=> @host.errors ]
          render json: @utter, 
          status: :unprocessable_entity 
        }
      end
    end
  end

  # PATCH/PUT /hosts/1
  # PATCH/PUT /hosts/1.json
  def update
    params[:host][:avatar] = upload_and_return_file_name(params[:host][:avatar]) if params[:host][:avatar]

    respond_to do |format|
      if @host.update(host_params)
        format.html { redirect_to @host, notice: 'Host was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @host.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hosts/1
  # DELETE /hosts/1.json
  def destroy
    @host.destroy
    respond_to do |format|
      format.html { redirect_to hosts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_host
      @host = Host.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def host_params
      params.require(:host).permit(:name, :app_id, :email, :password, :avatar, :address, :area, :city, :postcode, :state, :country, :verification, :longitude, :latitude, :subscription_end, :max_requests, :max_queue, :proximity, :facebook, :twitter, :slogan, :device_id, :session_id, :is_logged_in)
    end
end
