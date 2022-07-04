class RaceParticipantsController < ApplicationController
  before_action :set_race_participant, only: %i[ show edit update destroy ]

  # GET /race_participants or /race_participants.json
  def index
    @league_race = LeagueRace.find(params["league_race_id"])
    @race_participants = RaceParticipant.from_league_race(@league_race.id)
  end

  # GET /race_participants/1 or /race_participants/1.json
  def show
  end

  # GET /race_participants/new
  def new
    @race_participant = RaceParticipant.new
  end

  # GET /race_participants/1/edit
  def edit
  end

  # POST /race_participants or /race_participants.json
  def create
    @race_participant = RaceParticipant.new(race_participant_params)

    respond_to do |format|
      if @race_participant.save
        format.html { redirect_to race_participant_url(@race_participant), notice: "Race participant was successfully created." }
        format.json { render :show, status: :created, location: @race_participant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @race_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /race_participants/1 or /race_participants/1.json
  def update
    respond_to do |format|
      if @race_participant.update(race_participant_params)
        format.html { redirect_to race_participant_url(@race_participant), notice: "Race participant was successfully updated." }
        format.json { render :show, status: :ok, location: @race_participant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @race_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /race_participants/1 or /race_participants/1.json
  def destroy
    @race_participant.destroy

    respond_to do |format|
      format.html { redirect_to race_participants_url, notice: "Race participant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race_participant
      @race_participant = RaceParticipant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def race_participant_params
      params.require(:race_participant).permit(:user_id, :status, :position, :score, :league_race_id)
    end
end
