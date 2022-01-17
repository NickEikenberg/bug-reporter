class RemoveProjectOwnerFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :project_owner, :integer
  end
end
