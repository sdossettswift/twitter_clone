class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.text :message

      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    def down
      drop_table :posts
    end
  end
end
