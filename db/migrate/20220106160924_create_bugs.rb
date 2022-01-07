class CreateBugs < ActiveRecord::Migration[6.1]
  def change
    create_table :bugs do |t|
      t.string :title
      t.string :branch
      t.datetime :date_created
      t.string :severity
      t.string :created_by
      t.text :description
      t.text :repro_steps
      t.string :status
      t.string :assigned_to

      t.timestamps
    end
  end
end
