class Book < ActiveRecord::Base
  acts_as_followable
  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }

  belongs_to :user
  has_many :chats
  has_many :user_books
  has_many :users, through: :user_books

  validates :title, uniqueness: true

end
