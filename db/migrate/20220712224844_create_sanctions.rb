class CreateSanctions < ActiveRecord::Migration[6.1]
  def change
    create_table :sanctions do |t|
      t.text :description
      t.string :video_url
      t.references :league_race, null: false, foreign_key: true
      t.references :race_participant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
