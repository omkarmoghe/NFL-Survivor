class CreateColor < ActiveRecord::Migration[6.0]
  def change
    create_table :colors do |t|
      t.string :primary, null: false, limit: 7
      t.string :alternate, null: false, limit: 7
    end
  end
end
