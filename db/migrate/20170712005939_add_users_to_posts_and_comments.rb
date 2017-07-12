class AddUsersToPostsAndComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :author
    remove_column :comments, :author

    add_reference :posts, :user, index: true
    add_reference :comments, :user, index: true
  end
end
