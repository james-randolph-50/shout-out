class AddUserIdToShouts < ActiveRecord::Migration[5.1]
  def change
    add_column :shouts, :user_id, :integer
  end
end
