class AddColumnAppetiteToCandies < ActiveRecord::Migration[5.2]
  def change
    add_column :candies, :appetite, :integer
  end
end