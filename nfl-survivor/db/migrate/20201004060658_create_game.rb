class CreateGame < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :visiting_team_id, null: false
      t.integer :visiting_team_score, null: false
      t.integer :home_team_id, null: false
      t.integer :home_team_score, null: false
      t.datetime :kickoff_at
      t.integer :week, null: false, default: -1
      t.integer :season_id, null: false
      t.timestamps
    end
  end
end
