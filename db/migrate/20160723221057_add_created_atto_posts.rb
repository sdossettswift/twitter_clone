class AddCreatedAttoPosts < ActiveRecord::Migration

  def up
    update_table :posts do |t|
      t.integer "user_id"
      t.text    "message"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false

  end


end
