class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  vadidates :title, presence: true
  validates :title, uniqueness: true
  

end
