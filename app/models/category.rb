class Category < ApplicationRecord
  has_many :galleries
  has_many :pieces, through: :galleries
end
