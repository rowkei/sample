require "application_system_test_case"

class ActlogsTest < ApplicationSystemTestCase
  setup do
    @actlog = actlogs(:one)
  end

  test "visiting the index" do
    visit actlogs_url
    assert_selector "h1", text: "Actlogs"
  end

  test "creating a Actlog" do
    visit actlogs_url
    click_on "New Actlog"

    fill_in "Category", with: @actlog.category
    fill_in "Date", with: @actlog.date
    fill_in "Time", with: @actlog.time
    click_on "Create Actlog"

    assert_text "Actlog was successfully created"
    click_on "Back"
  end

  test "updating a Actlog" do
    visit actlogs_url
    click_on "Edit", match: :first

    fill_in "Category", with: @actlog.category
    fill_in "Date", with: @actlog.date
    fill_in "Time", with: @actlog.time
    click_on "Update Actlog"

    assert_text "Actlog was successfully updated"
    click_on "Back"
  end

  test "destroying a Actlog" do
    visit actlogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actlog was successfully destroyed"
  end
end
