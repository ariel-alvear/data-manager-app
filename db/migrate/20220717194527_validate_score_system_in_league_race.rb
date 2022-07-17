class ValidateScoreSystemInLeagueRace < ActiveRecord::Migration[6.1]
  def change
    validate_foreign_key :league_races, :score_systems
  end
end
