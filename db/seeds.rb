# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

topMenu1 = TopMenu.create(title: "租户设置", description: "租户特有的设置项目")
topMenu2 = TopMenu.create(title: "平台设置", description: "平台通用功能，包括标准对象和自定义按钮的管理功能等")
topMenu3 = TopMenu.create(title: "个人设置", description: "个人使用喜好设置")

subMenu11 = SubMenu.create(title: "区域和语言", description: "时区、默认语言、币种、时间格式等设置", top_menu: topMenu1)
subMenu12 = SubMenu.create(title: "定时通知", description: "定时通知", top_menu: topMenu1)
subMenu13 = SubMenu.create(title: "推送管理", description: "推送管理", top_menu: topMenu1)
subMenu14 = SubMenu.create(title: "风险预警", description: "风险预警", top_menu: topMenu1)
subMenu15 = SubMenu.create(title: "报表管理", description: "报表管理", top_menu: topMenu1)

subMenu21 = SubMenu.create(title: "标准对象管理", description: "标准对象及字段的新建和管理", top_menu: topMenu2)
subMenu22 = SubMenu.create(title: "权限设置", description: "全县设置", top_menu: topMenu2)
subMenu23 = SubMenu.create(title: "布局设置", description: "页面布局设置", top_menu: topMenu2)

subMenu31 = SubMenu.create(title: "语言设置", description: "自定义系统语言", top_menu: topMenu3)
subMenu32 = SubMenu.create(title: "主菜单项目管理", description: "自定义主菜单中的项目", top_menu: topMenu3)


############
# 设置面板
############

section111 = Section.create(title: "时区设置", description: "", sub_menu: subMenu11)
section112 = Section.create(title: "默认语言设置", description: "", sub_menu: subMenu11)

section121 = Section.create(title: "定时通知设置", description: "定时通知", sub_menu: subMenu12)
section131 = Section.create(title: "推送管理", description: "推送管理", sub_menu: subMenu13)
section141 = Section.create(title: "风险预警", description: "风险预警", sub_menu: subMenu14)
section151 = Section.create(title: "报表管理", description: "报表管理", sub_menu: subMenu15)


section211 = Section.create(title: "标准对象管理", description: "标准对象及字段的新建和管理", sub_menu: subMenu21)
section221 = Section.create(title: "权限设置", description: "权限设置", sub_menu: subMenu22)
section231 = Section.create(title: "布局设置", description: "页面布局设置", sub_menu: subMenu23)
