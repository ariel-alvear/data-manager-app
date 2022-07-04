json.extract! race_participant, :id, :user_id, :status, :position, :score, :league_race_id, :created_at, :updated_at
json.url race_participant_url(race_participant, format: :json)
