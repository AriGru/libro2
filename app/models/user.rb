class User < ActiveRecord::Base

  has_attached_file :image, styles: { thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }

  has_secure_password

  has_many :user_books
  has_many :chats
  has_many :books, through: :user_books
  has_many :ActivitiesController
end
