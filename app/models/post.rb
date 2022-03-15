class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 50 }
  validates :title, presence: true, length: { minimum: 5, maximum: 100 }
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_noticed_notifications model_name: 'Notifications'
  has_many :notifications, through: :user, dependent: :destroy
end
