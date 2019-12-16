require 'test_helper'

class OgsongsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

#Original song not accessible unless with a logged in user
#This sets up a virtual logged in user.
  setup do
    @ogsong = ogsongs(:one)
    @user = users(:one)
    sign_in @user
  end

#Tests indexing
  test "should get index" do
    get ogsongs_url
    assert_response :success
  end
#Tests new ogsong
  test "should get new" do
    get new_ogsong_url
    assert_response :success
  end

#tests creation of ogsong
  test "should create ogsong" do
    assert_difference('Ogsong.count') do
      post ogsongs_url, params: { ogsong: { artist: @ogsong.artist, lyrics: @ogsong.lyrics, title: @ogsong.title + " create"} }
    end

    assert_redirected_to ogsong_url(Ogsong.last)
  end

#Tests showing the ogsong
  test "should show ogsong" do
    get ogsong_url(@ogsong)
    assert_response :success
  end

#Tests editing
  test "should get edit" do
    get edit_ogsong_url(@ogsong)
    assert_response :success
  end

#Tests update
  test "should update ogsong" do
    patch ogsong_url(@ogsong), params: { ogsong: { artist: @ogsong.artist, lyrics: @ogsong.lyrics, title: @ogsong.title } }
    assert_redirected_to ogsong_url(@ogsong)
  end

#Tests destroying ogsong
  test "should destroy ogsong" do
    assert_difference('Ogsong.count', -1) do
      delete ogsong_url(@ogsong)
    end

    assert_redirected_to ogsongs_url
  end
end
