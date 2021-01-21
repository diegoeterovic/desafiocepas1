class AddFieldnameToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :grade, :integer
  end
end
