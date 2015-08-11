class Book < ActiveRecord::Base
  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
    where("content ILIKE ?", "%#{search}%")
  end
  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }

  belongs_to :user
  has_many :chats
  has_many :user_books
  has_many :users, through: :user_books

  validates :title, uniqueness: true

end
