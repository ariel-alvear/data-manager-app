class RaceTracksController < ApplicationController
  before_action :set_race_track, only: %i[ show edit update destroy ]

  # GET /race_tracks or /race_tracks.json
  def index
    @race_tracks = RaceTrack.all
  end

  # GET /race_tracks/1 or /race_tracks/1.json
  def show
  end

  # GET /race_tracks/new
  def new
    @race_track = RaceTrack.new
  end

  # GET /race_tracks/1/edit
  def edit
  end

  # POST /race_tracks or /race_tracks.json
  def create
    @race_track = RaceTrack.new(race_track_params)

    respond_to do |format|
      if @race_track.save
        format.html { redirect_to race_track_url(@race_track), notice: "Race track was successfully created." }
        format.json { render :show, status: :created, location: @race_track }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @race_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /race_tracks/1 or /race_tracks/1.json
  def update
    respond_to do |format|
      if @race_track.update(race_track_params)
        format.html { redirect_to race_track_url(@race_track), notice: "Race track was successfully updated." }
        format.json { render :show, status: :ok, location: @race_track }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @race_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /race_tracks/1 or /race_tracks/1.json
  def destroy
    @race_track.destroy

    respond_to do |format|
      format.html { redirect_to race_tracks_url, notice: "Race track was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race_track
      @race_track = RaceTrack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def race_track_params
      params.require(:race_track).permit(:name, :description, :country)
    end
end
