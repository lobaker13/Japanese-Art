class Keyword < ApplicationRecord
  enum category: [:medium, :period, :movement]
  enum category: [:medium, :base, :period, :movement]
  has_many :art_keywords
  has_many :arts, through: :art_keywords
end
