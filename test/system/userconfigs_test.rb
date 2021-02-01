require "application_system_test_case"

class UserconfigsTest < ApplicationSystemTestCase
  setup do
    @userconfig = userconfigs(:one)
  end

  test "visiting the index" do
    visit userconfigs_url
    assert_selector "h1", text: "Userconfigs"
  end

  test "creating a Userconfig" do
    visit userconfigs_url
    click_on "New Userconfig"

    fill_in "Apellidom", with: @userconfig.apellidom
    fill_in "Apellidop", with: @userconfig.apellidop
    fill_in "Descripcion", with: @userconfig.descripcion
    fill_in "Nombre", with: @userconfig.nombre
    click_on "Create Userconfig"

    assert_text "Userconfig was successfully created"
    click_on "Back"
  end

  test "updating a Userconfig" do
    visit userconfigs_url
    click_on "Edit", match: :first

    fill_in "Apellidom", with: @userconfig.apellidom
    fill_in "Apellidop", with: @userconfig.apellidop
    fill_in "Descripcion", with: @userconfig.descripcion
    fill_in "Nombre", with: @userconfig.nombre
    click_on "Update Userconfig"

    assert_text "Userconfig was successfully updated"
    click_on "Back"
  end

  test "destroying a Userconfig" do
    visit userconfigs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userconfig was successfully destroyed"
  end
end
