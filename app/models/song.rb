class Song < ApplicationRecord
  belongs_to :artist, dependent: :destroy
  vadidates :title, presence: true
  validates :title, uniqueness: false
end
