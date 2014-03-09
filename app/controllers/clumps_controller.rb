class ClumpsController < ApplicationController
  before_action :set_clump, only: [:show, :edit, :update, :destroy]

  # GET /clumps
  # GET /clumps.json
  def index
    @clumps = Clump.all
  end

  # GET /clumps/1
  # GET /clumps/1.json
  def show
  end

  # GET /clumps/new
  def new
    @clump = Clump.new
  end

  # GET /clumps/1/edit
  def edit
  end

  # POST /clumps
  # POST /clumps.json
  def create
    @clump = Clump.new(clump_params)

    respond_to do |format|
      if @clump.save
        format.html { redirect_to @clump, notice: 'Clump was successfully created.' }
        format.json { render action: 'show', status: :created, location: @clump }
      else
        format.html { render action: 'new' }
        format.json { render json: @clump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clumps/1
  # PATCH/PUT /clumps/1.json
  def update
    respond_to do |format|
      if @clump.update(clump_params)
        format.html { redirect_to @clump, notice: 'Clump was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @clump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clumps/1
  # DELETE /clumps/1.json
  def destroy
    @clump.destroy
    respond_to do |format|
      format.html { redirect_to clumps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clump
      @clump = Clump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clump_params
      params.require(:clump).permit(:url, :shit)
    end
end
