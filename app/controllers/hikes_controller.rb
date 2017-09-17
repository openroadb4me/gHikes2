class HikesController < ApplicationController

  before_filter :authorize
  before_action :set_hike, only: [:show, :edit, :update, :destroy]

  # GET /hikes
  # GET /hikes.json
  def index
    @hikes = Hike.all
  end

  # GET /hikes/1
  # GET /hikes/1.json
  def show
  end

  # GET /hikes/new
  def new
    @hike = Hike.new
  end

  # GET /hikes/1/edit
  def edit
  end

  # POST /hikes
  # POST /hikes.json
  def create
    @hike = Hike.new(hike_params)

    respond_to do |format|
      if @hike.save
        format.html { redirect_to @hike, notice: 'Hike was successfully created. Happy trails!' }
        format.json { render :show, status: :created, location: @hike }
      else
        format.html { render :new }
        format.json { render json: @hike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hikes/1
  # PATCH/PUT /hikes/1.json
  def update
    respond_to do |format|
      if @hike.update(hike_params)
        format.html { redirect_to @hike, notice: 'Hike was successfully updated. Get back out there!' }
        format.json { render :show, status: :ok, location: @hike }
      else
        format.html { render :edit }
        format.json { render json: @hike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hikes/1
  # DELETE /hikes/1.json
  def destroy
    @hike.destroy
    respond_to do |format|
      format.html { redirect_to hikes_url, notice: 'Hike was successfully destroyed. Mother Nature is sad.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hike
      @hike = Hike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hike_params
      params.require(:hike).permit(:title, :distance, :difficulty, :region, :description, :image, :link, :completed)
    end
end
