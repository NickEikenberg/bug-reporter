class AddUserIdToBugs < ActiveRecord::Migration[6.1]
  def change
    add_column :bugs, :user_id, :integer
    add_index :bugs, :user_id
  end
end
