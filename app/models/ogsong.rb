class Ogsong < ApplicationRecord
  #States the relationship.
  #One-to-many relationship between original song and a sample
  has_many :samples, dependent: :destroy
  #Many-to-many relationship between original songs and producers.
  has_and_belongs_to_many :producers
  #validates the presence of the title of the song
  validates :title, presence: true
  #validates the uniquenessof the title
  validates :title, uniqueness: true
end
