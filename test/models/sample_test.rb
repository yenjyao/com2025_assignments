require 'test_helper'

class SampleTest < ActiveSupport::TestCase

  setup do
    @ogsong = ogsongs(:one)
  end

  #Tests if an empty sample song saves
  test 'should not save empty sample' do
    sample = Sample.new

    sample.save
    refute sample.valid?
  end

  #Tests if sample details are valid
  test 'should save valid sample' do
    sample = Sample.new

    sample.title = 'My Sample'
    sample.artist = 'My Sample Artist'
    sample.ogsong = @ogsong

    sample.save
    assert sample.valid?
  end

end
