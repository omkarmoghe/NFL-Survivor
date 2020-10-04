class CreateTeam < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :location, null: false
      t.string :name, null: false
      t.string :short_name, null: false
      t.integer :color_id, null: false
      t.timestamps
    end
  end
end
