class Prototype < ActiveRecord::Base
  belongs_to :user

  has_many :thumbnails, dependent: :destroy

  accepts_nested_attributes_for :thumbnails

  validates_presence_of :title, :catch_copy, :concept

  def main_thumbnail
    thumbnails.main.first.name
  end

  def first_thumbnail
    thumbnails.sub.first.name
  end

  def second_thumbnail
    thumbnails.sub.second.name
  end

  def main_thumbnails
    thumbnails.main
  end

  def sub_thumbnails
    thumbnails.sub
  end
end


