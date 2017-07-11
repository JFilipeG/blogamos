class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :text, null: false
      t.string :author, null: false

      t.timestamps
    end
  end
end
