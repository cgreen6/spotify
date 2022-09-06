class Song < ApplicationRecord
  belongs_to :artist, dependent: :destroy
  has_one :artist, presence: true
  validates :title, :desc, presence: true
  validates :desc, length: { maximum: 400 }
end
