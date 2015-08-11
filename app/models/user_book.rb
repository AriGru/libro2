class UserBook < ActiveRecord::Base
  include PublicActivity::Model
  belongs_to :user
  belongs_to :book
end
