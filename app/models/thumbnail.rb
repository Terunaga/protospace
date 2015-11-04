class Thumbnail < ActiveRecord::Base
  belongs_to :prototype

  mount_uploader :name, ImageUploader

  validates_presence_of :name

  enum status: [:main, :sub]
end

