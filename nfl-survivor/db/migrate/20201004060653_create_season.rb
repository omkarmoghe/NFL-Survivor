class CreateSeason < ActiveRecord::Migration[6.0]
  def change
    create_table :seasons do |t|
      t.integer :start_year, null: false
      t.integer :end_year, null: false
      t.integer :current_week, null: false, default: -1
      t.timestamps
    end
  end
end
