class AddUserToSipocs < ActiveRecord::Migration[5.2]
  def change
    add_column :sipocs, :user_id, :integer
  end
end
