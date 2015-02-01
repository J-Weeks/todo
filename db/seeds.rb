# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
List.create!(name: "List 1", category: "Category 1")
Task.create!(title: "Task 1", complete: false, list_id: 1)
Note.create!(comment: "This is a note", task_id: 1)
