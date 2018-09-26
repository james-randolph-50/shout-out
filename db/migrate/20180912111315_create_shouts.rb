class CreateShouts < ActiveRecord::Migration[5.1]
  def change
    create_table :shouts do |t|
      t.text :shout

      t.timestamps
    end
  end
end
