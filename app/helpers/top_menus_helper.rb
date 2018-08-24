module TopMenusHelper
  def getSubMenus(parent_id)
    return SubMenu.where("top_menu_id = ?", parent_id)
  end
end
