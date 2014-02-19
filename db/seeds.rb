# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#<Cat id: nil, age: nil, birth_date: nil, color: nil, name: nil, sex: nil, created_at: nil, updated_at: nil>
# Colors = %w(calico black white brown green)
Cat.create( age: 10, color: "calico", name: "Fluffy", sex: "F")
Cat.create( age: 20, color: "white", name: "Whiskers", sex: "M")
Cat.create( age: 2, color: "black", name: "Athena", sex: "F")
Cat.create( age: 50, color: "green", name: "Ajax", sex: "M")
Cat.create( age: 3, color: "calico", name: "Python", sex: "F")
Cat.create( age: 4, color: "white", name: "Ruby", sex: "M")
Cat.create( age: 7, color: "black", name: "Rails", sex: "F")
Cat.create( age: 6, color: "black", name: "Django", sex: "M")
Cat.create( age: 999, color: "brown", name: "Wordpres", sex: "F")
Cat.create( age: 999999, color: "brown", name: "Gizmo", sex: "F")

