class RemovePrototypeIdFromTags < ActiveRecord::Migration
  def change
    remove_column :tags, :prototype_id, :integer
  end
end
