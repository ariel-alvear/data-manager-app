class CreateScoreSystems < ActiveRecord::Migration[6.1]
  def change
    create_table :score_systems do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
