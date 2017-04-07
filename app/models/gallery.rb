class Gallery < ApplicationRecord
  belongs_to :category

  has_many :pieces
end
