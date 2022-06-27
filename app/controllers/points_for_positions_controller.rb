class PointsForPositionsController < ApplicationController
  before_action :set_points_for_position, only: %i[ show edit update destroy ]

  # GET /points_for_positions or /points_for_positions.json
  def index
    @points_for_positions = PointsForPosition.all
  end

  # GET /points_for_positions/1 or /points_for_positions/1.json
  def show
  end

  # GET /points_for_positions/new
  def new
    @points_for_position = PointsForPosition.new
  end

  # GET /points_for_positions/1/edit
  def edit
  end

  # POST /points_for_positions or /points_for_positions.json
  def create
    @points_for_position = PointsForPosition.new(points_for_position_params)

    respond_to do |format|
      if @points_for_position.save
        format.html { redirect_to points_for_position_url(@points_for_position), notice: "Points for position was successfully created." }
        format.json { render :show, status: :created, location: @points_for_position }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @points_for_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /points_for_positions/1 or /points_for_positions/1.json
  def update
    respond_to do |format|
      if @points_for_position.update(points_for_position_params)
        format.html { redirect_to points_for_position_url(@points_for_position), notice: "Points for position was successfully updated." }
        format.json { render :show, status: :ok, location: @points_for_position }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @points_for_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /points_for_positions/1 or /points_for_positions/1.json
  def destroy
    @points_for_position.destroy

    respond_to do |format|
      format.html { redirect_to points_for_positions_url, notice: "Points for position was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_points_for_position
      @points_for_position = PointsForPosition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def points_for_position_params
      params.require(:points_for_position).permit(:name, :position, :points, :score_system_id)
    end
end
