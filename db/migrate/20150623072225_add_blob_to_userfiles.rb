class AddBlobToUserfiles < ActiveRecord::Migration
  def change
    add_column :userfiles, :blob, :string
  end
end
