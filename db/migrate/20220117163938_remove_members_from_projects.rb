class RemoveMembersFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :members, :string
  end
end
