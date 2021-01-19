class CreateBlends < ActiveRecord::Migration[5.2]
  def change
    create_table :blends do |t|
      t.references :wine, foreign_key: true
      t.references :strain, foreign_key: true
      t.integer :concentration, default: 50

      t.timestamps
    end
  end
end
