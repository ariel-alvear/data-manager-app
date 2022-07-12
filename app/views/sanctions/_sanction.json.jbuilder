json.extract! sanction, :id, :description, :video_url, :league_race_id, :race_participant_id, :created_at, :updated_at
json.url sanction_url(sanction, format: :json)
