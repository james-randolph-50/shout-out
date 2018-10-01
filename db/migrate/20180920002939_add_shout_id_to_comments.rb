class AddShoutIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :shout_id, :integer
  end
end
