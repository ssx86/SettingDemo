require 'test_helper'

class TopMenusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @top_menu = top_menus(:one)
  end

  test "should get index" do
    get top_menus_url
    assert_response :success
  end

  test "should get new" do
    get new_top_menu_url
    assert_response :success
  end

  test "should create top_menu" do
    assert_difference('TopMenu.count') do
      post top_menus_url, params: { top_menu: { description: @top_menu.description, icon: @top_menu.icon, title: @top_menu.title } }
    end

    assert_redirected_to top_menu_url(TopMenu.last)
  end

  test "should show top_menu" do
    get top_menu_url(@top_menu)
    assert_response :success
  end

  test "should get edit" do
    get edit_top_menu_url(@top_menu)
    assert_response :success
  end

  test "should update top_menu" do
    patch top_menu_url(@top_menu), params: { top_menu: { description: @top_menu.description, icon: @top_menu.icon, title: @top_menu.title } }
    assert_redirected_to top_menu_url(@top_menu)
  end

  test "should destroy top_menu" do
    assert_difference('TopMenu.count', -1) do
      delete top_menu_url(@top_menu)
    end

    assert_redirected_to top_menus_url
  end
end
