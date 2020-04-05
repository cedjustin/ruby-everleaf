# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
Label.create!(label_type: 'label1')
Label.create!(label_type: 'label2')
Label.create!(label_type: 'label3')
User.create!(email: 'cedrick@gmail.com', username: 'cedrick', password: '123456', password_confirmation: '123456', admin: 'true')
Task.create!(title: 'title1', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1', user_id: '1')
Task.create!(title: 'title2', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1', user_id: '1')
Task.create!(title: 'title3', status: 'completed', start_date: '1/1/2020', end_date: '1/3/2020', priority: '1', user_id: '1')
Task.create!(title: 'title4', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '3', user_id: '1')
Task.create!(title: 'title5', status: 'in progress', start_date: '1/2/2020', end_date: '1/12/2020', priority: '1', user_id: '1')
Task.create!(title: 'title6', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1', user_id: '1')
Task.create!(title: 'title7', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '3', user_id: '1')
Task.create!(title: 'title8', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1', user_id: '1')
Task.create!(title: 'title9', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1', user_id: '1')
Task.create!(title: 'title10', status: 'completed', start_date: '1/5/2020', end_date: '1/7/2020', priority: '2', user_id: '1')
Task.create!(title: 'title11', status: 'completed', start_date: '1/1/2020', end_date: '1/6/2020', priority: '2', user_id: '1')
Task.create!(title: 'title12', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1', user_id: '1')
Task.create!(title: 'title13', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1', user_id: '1')
Task.create!(title: 'title14', status: 'not yet started', start_date: '1/1/2020', end_date: '1/4/2020', priority: '1', user_id: '1')
Task.create!(title: 'title15', status: 'not yet started', start_date: '1/7/2020', end_date: '1/10/2020', priority: '1', user_id: '1')
Task.create!(title: 'title16', status: 'completed', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1', user_id: '1')
Task.create!(title: 'title17', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1', user_id: '1')
Task.create!(title: 'title18', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '2', user_id: '1')
Task.create!(title: 'title19', status: 'in progress', start_date: '1/1/2020', end_date: '1/1/2020', priority: '1', user_id: '1')
Task.create!(title: 'title20', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '2', user_id: '1')
Task.create!(title: 'title21', status: 'completed', start_date: '1/1/2020', end_date: '1/2/2020', priority: '1', user_id: '1')
Task.create!(title: 'title22', status: 'not yet started', start_date: '1/1/2020', end_date: '1/2/2020', priority: '3', user_id: '1')
puts "Success: Tasks data loaded"
