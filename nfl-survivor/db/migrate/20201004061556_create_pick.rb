class CreatePick < ActiveRecord::Migration[6.0]
  def change
    create_table :picks do |t|
      t.integer :season_id, null: false
      t.integer :team_id, null: false
      t.integer :user_id, null: false
      t.integer :league_id, null: false
      t.boolean :locked, null: false, default: false
      t.string :outcome, null: false, default: "tbd"
      t.timestamps

      t.index [:user_id, :league_id, :season_id], unique: true
    end
  end
end
