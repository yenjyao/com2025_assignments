require "application_system_test_case"

class ProducersTest < ApplicationSystemTestCase
  setup do
    @producer = producers(:one)
  end

  test "visiting the index" do
    visit producers_url
    assert_selector "h1", text: "Producers"
  end

  test "creating a Producer" do
    visit producers_url
    click_on "New Producer"

    fill_in "Email", with: @producer.email
    fill_in "Name", with: @producer.name
    fill_in "Telephone", with: @producer.telephone
    click_on "Create Producer"

    assert_text "Producer was successfully created"
    click_on "Back"
  end

  test "updating a Producer" do
    visit producers_url
    click_on "Edit", match: :first

    fill_in "Email", with: @producer.email
    fill_in "Name", with: @producer.name
    fill_in "Telephone", with: @producer.telephone
    click_on "Update Producer"

    assert_text "Producer was successfully updated"
    click_on "Back"
  end

  test "destroying a Producer" do
    visit producers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Producer was successfully destroyed"
  end
end
