class AddUserEmToVsms < ActiveRecord::Migration[5.2]
  def change
  	add_column :vsms, :user_id, :integer
  end
end
