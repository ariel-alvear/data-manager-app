class ScoreSystemsController < ApplicationController
  before_action :set_score_system, only: %i[ show edit update destroy ]

  # GET /score_systems or /score_systems.json
  def index
    @score_systems = ScoreSystem.all
  end

  # GET /score_systems/1 or /score_systems/1.json
  def show
    @points_for_positions = PointsForPosition.where(score_system_id: params[:id])
  end

  # GET /score_systems/new
  def new
    @score_system = ScoreSystem.new
  end

  # GET /score_systems/1/edit
  def edit
  end

  # POST /score_systems or /score_systems.json
  def create
    @score_system = ScoreSystem.new(score_system_params)

    respond_to do |format|
      if @score_system.save
        format.html { redirect_to score_system_url(@score_system), notice: "Score system was successfully created." }
        format.json { render :show, status: :created, location: @score_system }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @score_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /score_systems/1 or /score_systems/1.json
  def update
    respond_to do |format|
      if @score_system.update(score_system_params)
        format.html { redirect_to score_system_url(@score_system), notice: "Score system was successfully updated." }
        format.json { render :show, status: :ok, location: @score_system }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @score_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /score_systems/1 or /score_systems/1.json
  def destroy
    @score_system.destroy

    respond_to do |format|
      format.html { redirect_to score_systems_url, notice: "Score system was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score_system
      @score_system = ScoreSystem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def score_system_params
      params.require(:score_system).permit(:name, :description, points_for_positions_attributes: [:id, :name, :position, :points, :_destroy])
    end
end
