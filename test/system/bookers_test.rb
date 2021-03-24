require "application_system_test_case"

class BookersTest < ApplicationSystemTestCase
  setup do
    @booker = bookers(:one)
  end

  test "visiting the index" do
    visit bookers_url
    assert_selector "h1", text: "Bookers"
  end

  test "creating a Booker" do
    visit bookers_url
    click_on "New Booker"

    fill_in "Body", with: @booker.body
    fill_in "Title", with: @booker.title
    click_on "Create Booker"

    assert_text "Booker was successfully created"
    click_on "Back"
  end

  test "updating a Booker" do
    visit bookers_url
    click_on "Edit", match: :first

    fill_in "Body", with: @booker.body
    fill_in "Title", with: @booker.title
    click_on "Update Booker"

    assert_text "Booker was successfully updated"
    click_on "Back"
  end

  test "destroying a Booker" do
    visit bookers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Booker was successfully destroyed"
  end
end
