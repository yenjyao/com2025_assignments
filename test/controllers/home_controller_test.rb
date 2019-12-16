require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

#Tests the text retrieved from home
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'Music Sampling'
    assert_select 'h1', 'MusiQue'
    assert_select 'p', 'Welcome to the coursework (click here)'
    assert_select 'p', 'Website about music sampling. Please sign up if you do not have an account. You will be able to access all of this websites features once logged into your account.'
  end

#Tests the text retrieved from contact
  test "should get contact" do
    get contact_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'Music Sampling'
    assert_select 'h1', 'MusiQue'
    assert_select 'p', 'Complete the following form to get in touch with us.'
  end

#Tests the text retrieved from contact if no email
  test "should post request contact but no email" do
    post request_contact_url

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

#Tests the email posting
  test "should post request contact" do
    post request_contact_url, params:
    {name: "Matthew",email: "matthew@me.com", telephone: "1234567890", message: "Hello"}
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end

end
