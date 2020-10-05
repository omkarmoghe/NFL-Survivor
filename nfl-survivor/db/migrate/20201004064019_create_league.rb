class CreateLeague < ActiveRecord::Migration[6.0]
  def change
    create_table :leagues do |t|
      t.string :name, null: false
      t.integer :season_id, null: false
      t.integer :seasons_played, default: 1, null: false

      t.index :season_id
    end
  end
end
