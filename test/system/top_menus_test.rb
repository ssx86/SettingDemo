require "application_system_test_case"

class TopMenusTest < ApplicationSystemTestCase
  setup do
    @top_menu = top_menus(:one)
  end

  test "visiting the index" do
    visit top_menus_url
    assert_selector "h1", text: "Top Menus"
  end

  test "creating a Top menu" do
    visit top_menus_url
    click_on "New Top Menu"

    fill_in "Description", with: @top_menu.description
    fill_in "Icon", with: @top_menu.icon
    fill_in "Title", with: @top_menu.title
    click_on "Create Top menu"

    assert_text "Top menu was successfully created"
    click_on "Back"
  end

  test "updating a Top menu" do
    visit top_menus_url
    click_on "Edit", match: :first

    fill_in "Description", with: @top_menu.description
    fill_in "Icon", with: @top_menu.icon
    fill_in "Title", with: @top_menu.title
    click_on "Update Top menu"

    assert_text "Top menu was successfully updated"
    click_on "Back"
  end

  test "destroying a Top menu" do
    visit top_menus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Top menu was successfully destroyed"
  end
end
