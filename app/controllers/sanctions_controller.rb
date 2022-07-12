class SanctionsController < ApplicationController
  before_action :set_sanction, only: %i[ show edit update destroy ]

  # GET /sanctions or /sanctions.json
  def index
    @league_race = LeagueRace.find(params["league_race_id"])
    @sanctions = Sanction.from_league_race(@league_race.id)
  end

  # GET /sanctions/1 or /sanctions/1.json
  def show
  end

  # GET /sanctions/new
  def new
    @league_race = LeagueRace.find(params["league_race_id"])
    @sanction = Sanction.new
  end

  # GET /sanctions/1/edit
  def edit
  end

  # POST /sanctions or /sanctions.json
  def create
    @league_race = LeagueRace.find(params.dig(:sanction, :league_race_id))
    @sanction = Sanction.new(sanction_params)

    respond_to do |format|
      if @sanction.save
        format.html { redirect_to sanctions_path(league_race_id: @league_race.id), notice: "Sanción creada correctamente" }
        format.json { render :show, status: :created, location: @sanction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sanction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sanctions/1 or /sanctions/1.json
  def update
    respond_to do |format|
      if @sanction.update(sanction_params)
        format.html { redirect_to sanction_url(@sanction), notice: "Sanction was successfully updated." }
        format.json { render :show, status: :ok, location: @sanction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sanction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sanctions/1 or /sanctions/1.json
  def destroy
    @sanction.destroy

    respond_to do |format|
      format.html { redirect_to sanctions_url, notice: "Sanction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sanction
      @sanction = Sanction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sanction_params
      params.require(:sanction).permit(:description, :video_url, :league_race_id, :race_participant_id, :penalized_points)
    end
end
