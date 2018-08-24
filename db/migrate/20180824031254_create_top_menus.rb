class CreateTopMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :top_menus do |t|
      t.string :title
      t.text :description
      t.string :icon

      t.timestamps
    end
  end
end
