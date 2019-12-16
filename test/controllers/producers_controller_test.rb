require 'test_helper'

class ProducersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  #Sets up a user
  setup do
    @producer = producers(:one)
    @user = users(:one)
    sign_in @user
  end

#Tests indexing
  test "should get index" do
    get producers_url
    assert_response :success
  end

#tests new producer
  test "should get new" do
    get new_producer_url
    assert_response :success
  end

#Tests creating producer
  test "should create producer" do
    assert_difference('Producer.count') do
      post producers_url, params: { producer: { email: @producer.email, name: @producer.name + " create"} }
    end

    assert_redirected_to producer_url(Producer.last)
  end

#tests showing producer
  test "should show producer" do
    get producer_url(@producer)
    assert_response :success
  end

#Tests editing
  test "should get edit" do
    get edit_producer_url(@producer)
    assert_response :success
  end

#Tests updating
  test "should update producer" do
    patch producer_url(@producer), params: { producer: { email: @producer.email, name: @producer.name, telephone: @producer.telephone } }
    assert_redirected_to producer_url(@producer)
  end

#Tests destroying
  test "should destroy producer" do
    assert_difference('Producer.count', -1) do
      delete producer_url(@producer)
    end

    assert_redirected_to producers_url
  end
end
