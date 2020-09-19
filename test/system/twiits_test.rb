require "application_system_test_case"

class TwiitsTest < ApplicationSystemTestCase
  setup do
    @twiit = twiits(:one)
  end

  test "visiting the index" do
    visit twiits_url
    assert_selector "h1", text: "Twiits"
  end

  test "creating a Twiit" do
    visit twiits_url
    click_on "New Twiit"

    click_on "Create Twiit"

    assert_text "Twiit was successfully created"
    click_on "Back"
  end

  test "updating a Twiit" do
    visit twiits_url
    click_on "Edit", match: :first

    click_on "Update Twiit"

    assert_text "Twiit was successfully updated"
    click_on "Back"
  end

  test "destroying a Twiit" do
    visit twiits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Twiit was successfully destroyed"
  end
end
