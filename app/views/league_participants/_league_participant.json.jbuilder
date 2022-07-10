json.extract! league_participant, :id, :user_id, :status, :position, :score, :league_id, :created_at, :updated_at
json.url league_participant_url(league_participant, format: :json)
