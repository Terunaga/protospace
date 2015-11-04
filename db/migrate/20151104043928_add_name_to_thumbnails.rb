class AddNameToThumbnails < ActiveRecord::Migration
  def change
    add_column :thumbnails, :name, :string
  end
end
