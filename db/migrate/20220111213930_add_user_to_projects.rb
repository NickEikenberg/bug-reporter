class AddUserToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :user, :text, :default => 0
  end
end
