class AddMembersToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :members, :integer, :default => 0
  end
end
