class MakeUsersEmailIndexUnique < ActiveRecord::Migration
  def up
    add_index "spree_users", ["email"], :name => "email_idx", :unique => true
  end

  def down
    remove_index "spree_users", :name => "email_idx"
  end
end
