require "application_system_test_case"

class SubMenusTest < ApplicationSystemTestCase
  setup do
    @sub_menu = sub_menus(:one)
  end

  test "visiting the index" do
    visit sub_menus_url
    assert_selector "h1", text: "Sub Menus"
  end

  test "creating a Sub menu" do
    visit sub_menus_url
    click_on "New Sub Menu"

    fill_in "Description", with: @sub_menu.description
    fill_in "Icon", with: @sub_menu.icon
    fill_in "Title", with: @sub_menu.title
    fill_in "Top Menu", with: @sub_menu.top_menu_id
    click_on "Create Sub menu"

    assert_text "Sub menu was successfully created"
    click_on "Back"
  end

  test "updating a Sub menu" do
    visit sub_menus_url
    click_on "Edit", match: :first

    fill_in "Description", with: @sub_menu.description
    fill_in "Icon", with: @sub_menu.icon
    fill_in "Title", with: @sub_menu.title
    fill_in "Top Menu", with: @sub_menu.top_menu_id
    click_on "Update Sub menu"

    assert_text "Sub menu was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub menu" do
    visit sub_menus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub menu was successfully destroyed"
  end
end
