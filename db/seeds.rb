# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'admin', password: '123', admin: true)

Alert.create(message: 'school is closed today', show: true)
Alert.create(message: 'dont come to school', show: true)
Alert.create(message: 'school is back in session', show: false)

Post.create(title: "hello", body: 'todays lunch is pizza')
Post.create(title: "hello", body: 'school is closed thursday')
Post.create(title: "hello", body: 'field day tomorrow')
Post.create(title: "hello", body: 'dress up day tomorrow')
