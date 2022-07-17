class RemoveScoreSystemFromLeague < ActiveRecord::Migration[6.1]
  def change
    safety_assured { remove_column :leagues, :score_system_id }
  end
end
