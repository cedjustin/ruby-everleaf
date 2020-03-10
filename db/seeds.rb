# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
Task.create!(title: 'title1', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1')
Task.create!(title: 'title2', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1')
Task.create!(title: 'title3', status: 'completed', start_date: '1/1/2020', end_date: '1/3/2020', priority: '1')
Task.create!(title: 'title4', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '3')
Task.create!(title: 'title5', status: 'in progress', start_date: '1/2/2020', end_date: '1/12/2020', priority: '1')
Task.create!(title: 'title6', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1')
Task.create!(title: 'title7', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '3')
Task.create!(title: 'title8', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1')
Task.create!(title: 'title9', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1')
Task.create!(title: 'title10', status: 'completed', start_date: '1/5/2020', end_date: '1/7/2020', priority: '2')
Task.create!(title: 'title11', status: 'completed', start_date: '1/1/2020', end_date: '1/6/2020', priority: '2')
Task.create!(title: 'title12', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1')
Task.create!(title: 'title13', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1')
Task.create!(title: 'title14', status: 'not yet started', start_date: '1/1/2020', end_date: '1/4/2020', priority: '1')
Task.create!(title: 'title15', status: 'not yet started', start_date: '1/7/2020', end_date: '1/10/2020', priority: '1')
Task.create!(title: 'title16', status: 'completed', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1')
Task.create!(title: 'title17', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1')
Task.create!(title: 'title18', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '2')
Task.create!(title: 'title19', status: 'in progress', start_date: '1/1/2020', end_date: '1/1/2020', priority: '1')
Task.create!(title: 'title20', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '2')
Task.create!(title: 'title21', status: 'completed', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1')
Task.create!(title: 'title22', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '3')
puts "Success: Tasks data loaded"