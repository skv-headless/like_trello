# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.create! title: 'first', body: 'hello first', state: 'backlog'
Task.create! title: 'second', body: 'hello second', state: 'backlog'
Task.create! title: 'third', body: 'hello third', state: 'specification'
Task.create! title: 'fourth', body: 'hello fourth', state: 'in_work'
Task.create! title: 'fifth', body: 'hello fifth', state: 'testing'
Task.create! title: 'sixth', body: 'hello sixth', state: 'finished'