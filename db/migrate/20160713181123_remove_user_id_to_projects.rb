class RemoveUserIdToProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :user
  end
end
