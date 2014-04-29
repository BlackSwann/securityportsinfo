class PortServicesController < ApplicationController
  before_action :set_port_service, only: [:show, :edit, :update, :destroy]

  # GET /port_services
  # GET /port_services.json
  def index
    @port_services = PortService.all
  end

  # GET /port_services/1
  # GET /port_services/1.json
  def show
  end

  # GET /port_services/new
  def new
    @port_service = PortService.new
  end

  # GET /port_services/1/edit
  def edit
  end

  # POST /port_services
  # POST /port_services.json
  def create
    @port_service = PortService.new(port_service_params)

    respond_to do |format|
      if @port_service.save
        format.html { redirect_to @port_service, notice: 'Port service was successfully created.' }
        format.json { render :show, status: :created, location: @port_service }
      else
        format.html { render :new }
        format.json { render json: @port_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /port_services/1
  # PATCH/PUT /port_services/1.json
  def update
    respond_to do |format|
      if @port_service.update(port_service_params)
        format.html { redirect_to @port_service, notice: 'Port service was successfully updated.' }
        format.json { render :show, status: :ok, location: @port_service }
      else
        format.html { render :edit }
        format.json { render json: @port_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /port_services/1
  # DELETE /port_services/1.json
  def destroy
    @port_service.destroy
    respond_to do |format|
      format.html { redirect_to port_services_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_port_service
      @port_service = PortService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def port_service_params
      params.require(:port_service).permit(:port_id, :service_id)
    end
end
