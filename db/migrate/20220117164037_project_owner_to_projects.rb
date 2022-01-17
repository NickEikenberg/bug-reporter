class ProjectOwnerToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :project_owner, :integer, :default => 0
  end
end
