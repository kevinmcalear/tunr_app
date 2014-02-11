class Artist < ActiveRecord::Base
  has_many :songs
  belongs_to :user
  validates :name, { presence: true }
  validates :photo_url, { presence: true }
end