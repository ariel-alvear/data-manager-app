class CreateLeagues < ActiveRecord::Migration[6.1]
  def change
    create_table :leagues do |t|
      t.string :name
      t.string :description
      t.references :score_system, null: false, foreign_key: true

      t.timestamps
    end
  end
end
