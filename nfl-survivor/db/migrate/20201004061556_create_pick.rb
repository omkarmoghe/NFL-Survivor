class CreatePick < ActiveRecord::Migration[6.0]
  def change
    create_table :picks do |t|
      t.integer :game_id, null: false
      t.integer :team_id, null: false
      t.integer :user_id, null: false
      t.integer :league_id, null: false
    end
  end
end
