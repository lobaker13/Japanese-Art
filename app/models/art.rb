class Art < ApplicationRecord
  belongs_to :user
  belongs_to :artist
  has_many :leases
  has_many :art_keywords
  has_many :keywords, through: :art_keywords
  has_attached_file :image, :styles =>{ :medium => "300x300>", :thumb => "100x100>" },:default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  def index
  end
end
