class ServiceVersionSosController < ApplicationController
  before_action :set_service_version_so, only: [:show, :edit, :update, :destroy]

  # GET /service_version_sos
  # GET /service_version_sos.json
  def index
    @service_version_sos = ServiceVersionSo.all
  end

  # GET /service_version_sos/1
  # GET /service_version_sos/1.json
  def show
  end

  # GET /service_version_sos/new
  def new
    @service_version_so = ServiceVersionSo.new
  end

  # GET /service_version_sos/1/edit
  def edit
  end

  # POST /service_version_sos
  # POST /service_version_sos.json
  def create
    @service_version_so = ServiceVersionSo.new(service_version_so_params)

    respond_to do |format|
      if @service_version_so.save
        format.html { redirect_to @service_version_so, notice: 'Service version so was successfully created.' }
        format.json { render :show, status: :created, location: @service_version_so }
      else
        format.html { render :new }
        format.json { render json: @service_version_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_version_sos/1
  # PATCH/PUT /service_version_sos/1.json
  def update
    respond_to do |format|
      if @service_version_so.update(service_version_so_params)
        format.html { redirect_to @service_version_so, notice: 'Service version so was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_version_so }
      else
        format.html { render :edit }
        format.json { render json: @service_version_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_version_sos/1
  # DELETE /service_version_sos/1.json
  def destroy
    @service_version_so.destroy
    respond_to do |format|
      format.html { redirect_to service_version_sos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_version_so
      @service_version_so = ServiceVersionSo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_version_so_params
      params.require(:service_version_so).permit(:version_so_id, :service_id)
    end
end
