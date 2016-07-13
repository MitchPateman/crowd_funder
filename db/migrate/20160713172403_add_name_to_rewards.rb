class AddNameToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :name, :string
  end
end
