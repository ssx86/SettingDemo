class CreateSubMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_menus do |t|
      t.string :title
      t.text :description
      t.string :icon
      t.references :top_menu, foreign_key: true

      t.timestamps
    end
  end
end
