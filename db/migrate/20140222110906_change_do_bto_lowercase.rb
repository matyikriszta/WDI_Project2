class ChangeDoBtoLowercase < ActiveRecord::Migration
  def up
    rename_column :users, :DOB, :dob
  end

  def down
      rename_column :users, :dob, :DOB
  end
end
