class Billboard < ApplicationRecord

  has_many :artists, dependent: :destroy
  vadidates :title, presence: true
  validates :title, uniqueness: true
end
