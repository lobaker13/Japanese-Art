class User < ApplicationRecord
  has_many :arts
  has_many :leases
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def full_name
  	"#{fname} #{lname}".strip
  end
end
