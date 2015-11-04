class CreateThumbnails < ActiveRecord::Migration
  def change
    create_table :thumbnails do |t|
      t.string :status
      t.references :prototype

      t.timestamps null: false
    end
  end
end
