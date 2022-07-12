class LeagueParticipantsController < ApplicationController
  before_action :set_league_participant, only: %i[ show edit update destroy ]

  # GET /league_participants or /league_participants.json
  def index
    @league = League.find(params["league_id"])
    @league_participants = LeagueParticipant.from_league(@league.id).order('score DESC')
  end

  # GET /league_participants/1 or /league_participants/1.json
  def show
  end

  # GET /league_participants/new
  def new
    @league_participant = LeagueParticipant.new
  end

  # GET /league_participants/1/edit
  def edit
  end

  # POST /league_participants or /league_participants.json
  def create
    @league_participant = LeagueParticipant.new(league_participant_params)

    respond_to do |format|
      if @league_participant.save
        format.html { redirect_to league_participant_url(@league_participant), notice: "League participant was successfully created." }
        format.json { render :show, status: :created, location: @league_participant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @league_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /league_participants/1 or /league_participants/1.json
  def update
    respond_to do |format|
      if @league_participant.update(league_participant_params)
        format.html { redirect_to league_participant_url(@league_participant), notice: "League participant was successfully updated." }
        format.json { render :show, status: :ok, location: @league_participant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @league_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /league_participants/1 or /league_participants/1.json
  def destroy
    @league_participant.destroy

    respond_to do |format|
      format.html { redirect_to league_participants_url, notice: "League participant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_league_participant
      @league_participant = LeagueParticipant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def league_participant_params
      params.require(:league_participant).permit(:user_id, :status, :position, :score, :league_id)
    end
end
