# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([{name: "事務用品"}, {name: "医療材料"},{name: "検査試薬"}, {name: "医薬品"}, {name: "建築資材"}, {name: "その他"}])

Content.create([{name: "新規提案"}, {name: "価格交渉"},{name: "契約関係"}, {name: "納期調整"}, {name: "その他"}])

Department.create([{name: "全般"}, {name: "医局"}, {name: "看護局"},{name: "技術局"}, {name: "薬局"}, {name: "事務局"}, {name: "その他"}])