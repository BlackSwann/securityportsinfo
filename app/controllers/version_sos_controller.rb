class VersionSosController < ApplicationController
  before_action :set_version_so, only: [:show, :edit, :update, :destroy]

  # GET /version_sos
  # GET /version_sos.json
  def index
    @version_sos = VersionSo.all
  end

  # GET /version_sos/1
  # GET /version_sos/1.json
  def show
  end

  # GET /version_sos/new
  def new
    @version_so = VersionSo.new
  end

  # GET /version_sos/1/edit
  def edit
  end

  # POST /version_sos
  # POST /version_sos.json
  def create
    @version_so = VersionSo.new(version_so_params)

    respond_to do |format|
      if @version_so.save
        format.html { redirect_to @version_so, notice: 'Version so was successfully created.' }
        format.json { render :show, status: :created, location: @version_so }
      else
        format.html { render :new }
        format.json { render json: @version_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /version_sos/1
  # PATCH/PUT /version_sos/1.json
  def update
    respond_to do |format|
      if @version_so.update(version_so_params)
        format.html { redirect_to @version_so, notice: 'Version so was successfully updated.' }
        format.json { render :show, status: :ok, location: @version_so }
      else
        format.html { render :edit }
        format.json { render json: @version_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /version_sos/1
  # DELETE /version_sos/1.json
  def destroy
    @version_so.destroy
    respond_to do |format|
      format.html { redirect_to version_sos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_version_so
      @version_so = VersionSo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def version_so_params
      params.require(:version_so).permit(:name, :description)
    end
end
