class AddUserIdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :user, :integer
  end
end
