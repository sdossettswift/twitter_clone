class Posts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :user
      t.text :message
    end
  end
end
