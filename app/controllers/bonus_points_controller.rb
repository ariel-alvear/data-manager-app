class BonusPointsController < ApplicationController
  before_action :set_bonus_point, only: %i[ show edit update destroy ]

  # GET /bonus_points or /bonus_points.json
  def index
    @league_race = LeagueRace.find(params["league_race_id"])
    @bonus_points = BonusPoint.from_league_race(@league_race.id)
  end

  # GET /bonus_points/1 or /bonus_points/1.json
  def show
  end

  # GET /bonus_points/new
  def new
    @league_race = LeagueRace.find(params["league_race_id"])
    @bonus_point = BonusPoint.new
  end

  # GET /bonus_points/1/edit
  def edit
  end

  # POST /bonus_points or /bonus_points.json
  def create
    @bonus_point = BonusPoint.new(bonus_point_params)
    @league_race = LeagueRace.find(params.dig(:bonus_point, :league_race_id))

    respond_to do |format|
      if @bonus_point.save
        UpdateLeagueParticipantScore.call(@league_race)
        UpdateLeagueParticipantPosition.call(@league_race)
        format.html { redirect_to bonus_points_path(league_race_id: @league_race.id), notice: "Punto extra agregado correctamente" }
        format.json { render :show, status: :created, location: @bonus_point }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bonus_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bonus_points/1 or /bonus_points/1.json
  def update
    respond_to do |format|
      if @bonus_point.update(bonus_point_params)
        format.html { redirect_to bonus_point_url(@bonus_point), notice: "Bonus point was successfully updated." }
        format.json { render :show, status: :ok, location: @bonus_point }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bonus_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bonus_points/1 or /bonus_points/1.json
  def destroy
    @bonus_point.destroy

    respond_to do |format|
      format.html { redirect_to bonus_points_url, notice: "Bonus point was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bonus_point
      @bonus_point = BonusPoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bonus_point_params
      params.require(:bonus_point).permit(:description, :points, :league_race_id, :race_participant_id)
    end
end
