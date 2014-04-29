class ServiceVersionsController < ApplicationController
  before_action :set_service_version, only: [:show, :edit, :update, :destroy]

  # GET /service_versions
  # GET /service_versions.json
  def index
    @service_versions = ServiceVersion.all
  end

  # GET /service_versions/1
  # GET /service_versions/1.json
  def show
  end

  # GET /service_versions/new
  def new
    @service_version = ServiceVersion.new
  end

  # GET /service_versions/1/edit
  def edit
  end

  # POST /service_versions
  # POST /service_versions.json
  def create
    @service_version = ServiceVersion.new(service_version_params)

    respond_to do |format|
      if @service_version.save
        format.html { redirect_to @service_version, notice: 'Service version was successfully created.' }
        format.json { render :show, status: :created, location: @service_version }
      else
        format.html { render :new }
        format.json { render json: @service_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_versions/1
  # PATCH/PUT /service_versions/1.json
  def update
    respond_to do |format|
      if @service_version.update(service_version_params)
        format.html { redirect_to @service_version, notice: 'Service version was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_version }
      else
        format.html { render :edit }
        format.json { render json: @service_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_versions/1
  # DELETE /service_versions/1.json
  def destroy
    @service_version.destroy
    respond_to do |format|
      format.html { redirect_to service_versions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_version
      @service_version = ServiceVersion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_version_params
      params.require(:service_version).permit(:version, :dateBegin, :dateEnd, :service_id)
    end
end
