require "application_system_test_case"

class OgsongsTest < ApplicationSystemTestCase
  setup do
    @ogsong = ogsongs(:one)
  end

  test "visiting the index" do
    visit ogsongs_url
    assert_selector "h1", text: "Ogsongs"
  end

  test "creating a Ogsong" do
    visit ogsongs_url
    click_on "New Ogsong"

    fill_in "Artist", with: @ogsong.artist
    fill_in "Lyrics", with: @ogsong.lyrics
    fill_in "Title", with: @ogsong.title
    click_on "Create Ogsong"

    assert_text "Ogsong was successfully created"
    click_on "Back"
  end

  test "updating a Ogsong" do
    visit ogsongs_url
    click_on "Edit", match: :first

    fill_in "Artist", with: @ogsong.artist
    fill_in "Lyrics", with: @ogsong.lyrics
    fill_in "Title", with: @ogsong.title
    click_on "Update Ogsong"

    assert_text "Ogsong was successfully updated"
    click_on "Back"
  end

  test "destroying a Ogsong" do
    visit ogsongs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ogsong was successfully destroyed"
  end
end
