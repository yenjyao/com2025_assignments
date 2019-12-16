class Sample < ApplicationRecord
  #States the relationship.
  #One-to-many relationship between original song and a sample
  belongs_to :ogsong
  #Many-to-many relationship between sampled songs and producers.
  has_and_belongs_to_many :producers
    #validates the presence of the title, artist and original song of the sampled song
  validates :title, :artist, :ogsong, presence: true
end
