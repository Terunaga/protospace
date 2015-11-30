class AddPrototypeIdToTags < ActiveRecord::Migration
  def change
    add_column :tags, :prototype_id, :integer
  end
end
