class LeagueRacesController < ApplicationController
  before_action :set_league_race, only: %i[ show edit update destroy ]

  # GET /league_races or /league_races.json
  def index
    @league = League.find(params["league_id"])
    @league_races = LeagueRace.from_league(@league.id)
  end
  
  # GET /league_races/1 or /league_races/1.json
  def show
  end
  
  # GET /league_races/new
  def new
    @league = League.find(params["league_id"])
    @league_race = LeagueRace.new
    @positions_for_select = PointsForPosition.from_score_system(@league.score_system.id)
  end
  
  # GET /league_races/1/edit
  def edit
  end
  
  # POST /league_races or /league_races.json
  def create
    @league_race = LeagueRace.new(league_race_params)
    @points_for_position = PointsForPosition.from_score_system(params[:score_system_id].to_i)
    @league_race.race_participants.each do |participant|
      if participant.position.to_i > 20
        participant.score = 0
      else
        participant.score = @points_for_position.find_by(position: participant.position).points
      end
    end
    
    respond_to do |format|
      if @league_race.save
        UpdateLeagueParticipantScore.call(@league_race)
        UpdateLeagueParticipantPosition.call(@league_race)
        format.html { redirect_to race_participants_path(league_race_id: @league_race.id), notice: "Carrera creada correctamente" }
        format.json { render :show, status: :created, location: @league_race }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @league_race.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /league_races/1 or /league_races/1.json
  def update
    respond_to do |format|
      if @league_race.update(league_race_params)
        format.html { redirect_to league_race_url(@league_race), notice: "League race was successfully updated." }
        format.json { render :show, status: :ok, location: @league_race }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @league_race.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /league_races/1 or /league_races/1.json
  def destroy
    @league_race.destroy

    respond_to do |format|
      format.html { redirect_to league_races_url, notice: "League race was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def score_for_position(score_system)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_league_race
      @league_race = LeagueRace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def league_race_params
      params.require(:league_race)
            .permit(
                    :name,
                    :description,
                    :race_track_id,
                    :league_id,
                    race_participants_attributes: [
                                                    :id,
                                                    :user_id,
                                                    :race_league_id,
                                                    :position,
                                                    :score,
                                                    :status,
                                                    :_destroy]
                    )
    end
end
