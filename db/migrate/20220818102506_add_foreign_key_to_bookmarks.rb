class AddForeignKeyToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :bookmarks, :movies
    add_foreign_key :bookmarks, :lists
  end
end
