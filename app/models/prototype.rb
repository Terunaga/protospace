class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :comments, dependent: :destroy
  has_many :thumbnails, dependent: :destroy
  has_many :tags, dependent: :destroy

  accepts_nested_attributes_for :thumbnails

  validates_presence_of :title, :catch_copy, :concept

  acts_as_taggable

  acts_as_ordered_taggable_on :prototypes

  paginates_per 20

  def main_thumbnail
    thumbnails.main.first.name
  end

  def first_thumbnail
    thumbnails.sub.first.name
  end

  def second_thumbnail
    thumbnails.sub.second.name
  end

  def third_thumbnail
    thumbnails.sub.third.name
  end

  def main_thumbnails
    thumbnails.main
  end

  def sub_thumbnails
    thumbnails.sub
  end
end


