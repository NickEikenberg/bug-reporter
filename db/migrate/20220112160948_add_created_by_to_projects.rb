class AddCreatedByToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :created_by, :string
  end
end
