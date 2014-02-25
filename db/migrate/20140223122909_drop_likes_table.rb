class DropLikesTable < ActiveRecord::Migration
  def up
    drop_table :likes
  end

  def down
    create_table :likes do |t|
      t.integer :user_id
      t.integer :liked_user_id
      t.timestamps
    end  
  end
end
