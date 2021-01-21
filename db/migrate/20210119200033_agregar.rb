class Agregar < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :grade, :intefer, :default => 50
  end
end
