require 'test_helper'

class OgsongTest < ActiveSupport::TestCase

#Test that an empty note should not save
  test 'should not have save empty ogsong' do
    #Creates original song
    og = Ogsong.new

    #Has no content
    #save it
    og.save
    refute og.valid?
  end

  test 'should save valid ogsong' do
    #Creationg
    og = Ogsong.new

    #Inputted details
    og.title = 'My Ogsong'
    og.artist = 'My artist'

    #Saves it
    og.save
    assert og.valid?
  end

  #Creates two unique original songs, check if it has the same title
  test 'should not save duplicate ogsong title' do
    og1 = Ogsong.new
    og1.title = 'My Og'
    og1.artist = 'My artist'

    og1.save
    assert og1.valid?

    og2 = Ogsong.new
    og2.title = 'My Og'
    og2.artist = 'My artist'

    og2.save
    refute og2.valid?
  end
end
