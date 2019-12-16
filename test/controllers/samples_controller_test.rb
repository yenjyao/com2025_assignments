require 'test_helper'

class SamplesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  #Sets up signed in users
  #Sets up an original song due to sample song being dependent
  setup do
    @sample = samples(:one)
    @ogsong = ogsongs(:one)
    @user = users(:one)
    sign_in @user
  end

#Tests indexing
  test "should get index" do
    get samples_url
    assert_response :success
  end

#Tests new
  test "should get new" do
    get new_sample_url(ogsong_id: @ogsong)
    assert_response :success
  end

#Tests creation
  test "should create sample" do
    assert_difference('Sample.count') do
      post samples_url, params: { sample: { artist: @sample.artist, lyrics: @sample.lyrics, ogsong_id: @ogsong.id, title: @sample.title } }
    end

    assert_redirected_to sample_url(Sample.last)
  end

#test showing
  test "should show sample" do
    get sample_url(@sample)
    assert_response :success
  end

#Tests editing
  test "should get edit" do
    get edit_sample_url(@sample)
    assert_response :success
  end

#Test updating
  test "should update sample" do
    patch sample_url(@sample), params: { sample: { artist: @sample.artist, lyrics: @sample.lyrics, ogsong_id: @ogsong.id, title: @sample.title } }
    assert_redirected_to sample_url(@sample)
  end

#Tests destroying
  test "should destroy sample" do
    assert_difference('Sample.count', -1) do
      delete sample_url(@sample)
    end

    assert_redirected_to samples_url
  end
end
