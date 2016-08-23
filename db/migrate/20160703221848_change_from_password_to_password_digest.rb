class ChangeFromPasswordToPasswordDigest < ActiveRecord::Migration
  def up
    update_table :users do |t|
      t.string :email
      t.string :username
      t.string :password_digest
  end


  def down
  end
end
