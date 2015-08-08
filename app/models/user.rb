class User < ActiveRecord::Base

  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }

  has_secure_password

  has_many :user_books
  has_many :chats
  has_many :books, through: :user_books
end
