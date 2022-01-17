class RemoveCreatedByFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :created_by, :string
  end
end
