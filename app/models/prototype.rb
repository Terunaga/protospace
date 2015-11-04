class Prototype < ActiveRecord::Base
  belongs_to :user

  has_many :thumbnails

  accepts_nested_attributes_for :thumbnails

  validates_presence_of :title, :catch_copy, :concept
end


