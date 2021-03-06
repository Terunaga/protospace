class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true

  mount_uploader :avatar, ImageUploader

  has_many :prototypes
  has_many :likes
  has_many :comments
  has_many :tags

end

