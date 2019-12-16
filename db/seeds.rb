# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#If there exists an original song called 'Feel Good Inc.', destroy it.
gorillaz = Ogsong.where(title:'Feel Good Inc.').first
gorillaz.delete if gorillaz

#Create original song with the following details
og_songs = Ogsong.create([title:'Feel Good Inc.', artist: 'Gorillaz'])

#If there exists a producer called 'Danger Mouse', destroy it.
danger = Producer.where(name: 'Danger Mouse').first
danger.delete if Danger

#Create producer with following details
producers = Producer.create([title: 'Danger Mouse', email: 'dangermouse@email.com', telephone: '134875712384'])
