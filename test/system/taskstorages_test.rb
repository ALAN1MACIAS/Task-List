require "application_system_test_case"

class TaskstoragesTest < ApplicationSystemTestCase
  setup do
    @taskstorage = taskstorages(:one)
  end

  test "visiting the index" do
    visit taskstorages_url
    assert_selector "h1", text: "Taskstorages"
  end

  test "creating a Taskstorage" do
    visit taskstorages_url
    click_on "New Taskstorage"

    fill_in "Body", with: @taskstorage.body
    fill_in "Title", with: @taskstorage.title
    fill_in "Type", with: @taskstorage.type
    click_on "Create Taskstorage"

    assert_text "Taskstorage was successfully created"
    click_on "Back"
  end

  test "updating a Taskstorage" do
    visit taskstorages_url
    click_on "Edit", match: :first

    fill_in "Body", with: @taskstorage.body
    fill_in "Title", with: @taskstorage.title
    fill_in "Type", with: @taskstorage.type
    click_on "Update Taskstorage"

    assert_text "Taskstorage was successfully updated"
    click_on "Back"
  end

  test "destroying a Taskstorage" do
    visit taskstorages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Taskstorage was successfully destroyed"
  end
end
