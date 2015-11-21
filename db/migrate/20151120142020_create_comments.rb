class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :prototype
      t.references :user
      t.string :text

      t.timestamps null: false
    end
  end
end
