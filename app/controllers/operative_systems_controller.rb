class OperativeSystemsController < ApplicationController
  before_action :set_operative_system, only: [:show, :edit, :update, :destroy]

  # GET /operative_systems
  # GET /operative_systems.json
  def index
    @operative_systems = OperativeSystem.all
  end

  # GET /operative_systems/1
  # GET /operative_systems/1.json
  def show
  end

  # GET /operative_systems/new
  def new
    @operative_system = OperativeSystem.new
  end

  # GET /operative_systems/1/edit
  def edit
  end

  # POST /operative_systems
  # POST /operative_systems.json
  def create
    @operative_system = OperativeSystem.new(operative_system_params)

    respond_to do |format|
      if @operative_system.save
        format.html { redirect_to @operative_system, notice: 'Operative system was successfully created.' }
        format.json { render :show, status: :created, location: @operative_system }
      else
        format.html { render :new }
        format.json { render json: @operative_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operative_systems/1
  # PATCH/PUT /operative_systems/1.json
  def update
    respond_to do |format|
      if @operative_system.update(operative_system_params)
        format.html { redirect_to @operative_system, notice: 'Operative system was successfully updated.' }
        format.json { render :show, status: :ok, location: @operative_system }
      else
        format.html { render :edit }
        format.json { render json: @operative_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operative_systems/1
  # DELETE /operative_systems/1.json
  def destroy
    @operative_system.destroy
    respond_to do |format|
      format.html { redirect_to operative_systems_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operative_system
      @operative_system = OperativeSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operative_system_params
      params.require(:operative_system).permit(:name, :description)
    end
end
