class User < ApplicationRecord
  devise :database_authenticatable, :rememberable, :validatable

  has_one :bio
  has_one :resume
end
