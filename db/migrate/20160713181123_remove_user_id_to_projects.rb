class RemoveUserIdToProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :user
  end
end
