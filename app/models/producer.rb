class Producer < ApplicationRecord
    #Many-to-many relationship between original songs and producers.
  has_and_belongs_to_many :ogsongs
    #Many-to-many relationship between sampled songs and producers.
  has_and_belongs_to_many :samples
    #validates the presence of the name of the song
  validates :name, presence: true
    #validates the uniqueness of the name of the song
  validates :name, uniqueness: true
end
