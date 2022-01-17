class RemoveUserFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :user, :text
  end
end
