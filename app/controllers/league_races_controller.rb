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
    @league_race = LeagueRace.new
  end

  # GET /league_races/1/edit
  def edit
  end

  # POST /league_races or /league_races.json
  def create
    @league_race = LeagueRace.new(league_race_params)

    respond_to do |format|
      if @league_race.save
        format.html { redirect_to league_race_url(@league_race), notice: "League race was successfully created." }
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_league_race
      @league_race = LeagueRace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def league_race_params
      params.require(:league_race).permit(:name, :description, :race_track_id, :league_id)
    end
end
