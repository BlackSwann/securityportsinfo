class VulnerabilitiesController < ApplicationController
  before_action :set_vulnerability, only: [:show, :edit, :update, :destroy]

  # GET /vulnerabilities
  # GET /vulnerabilities.json
  def index
    @vulnerabilities = Vulnerability.all
  end

  # GET /vulnerabilities/1
  # GET /vulnerabilities/1.json
  def show
  end

  # GET /vulnerabilities/new
  def new
    @vulnerability = Vulnerability.new
  end

  # GET /vulnerabilities/1/edit
  def edit
  end

  # POST /vulnerabilities
  # POST /vulnerabilities.json
  def create
    @vulnerability = Vulnerability.new(vulnerability_params)

    respond_to do |format|
      if @vulnerability.save
        format.html { redirect_to @vulnerability, notice: 'Vulnerability was successfully created.' }
        format.json { render :show, status: :created, location: @vulnerability }
      else
        format.html { render :new }
        format.json { render json: @vulnerability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vulnerabilities/1
  # PATCH/PUT /vulnerabilities/1.json
  def update
    respond_to do |format|
      if @vulnerability.update(vulnerability_params)
        format.html { redirect_to @vulnerability, notice: 'Vulnerability was successfully updated.' }
        format.json { render :show, status: :ok, location: @vulnerability }
      else
        format.html { render :edit }
        format.json { render json: @vulnerability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vulnerabilities/1
  # DELETE /vulnerabilities/1.json
  def destroy
    @vulnerability.destroy
    respond_to do |format|
      format.html { redirect_to vulnerabilities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vulnerability
      @vulnerability = Vulnerability.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vulnerability_params
      params.require(:vulnerability).permit(:name, :description, :discovered, :service_version_id, :service_id)
    end
end
