# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: 'Jordles', password: '1234', email: 'j@gmail.com', name: 'Jordan')
u2 = User.create(username: 'Meks', password: '1234', email: 'm@gmail.com', name: 'Meks')
u3 = User.create(username: 'Tracie', password: '1234', email: 't@gmail.com', name: 'Tracie')

g1 = u1.goals.create(name: 'Exercise')
g2 = u2.goals.create(name: 'Meditation')
g3 = u3.goals.create(name: 'Gratitude')
g4 = u1.goals.create(name: 'Productivity')

h1 = g1.habits.create(name: 'Walking', frequency: 5, progress: 0)
h2 = g2.habits.create(name: 'meditate', frequency: 5, progress: 0)
h3 = g2.habits.create(name: 'Yoga', frequency: 5, progress: 0)
h4 = g3.habits.create(name: 'Gratitude list', frequency: 7, progress: 0)
h5 = g4.habits.create(name: 'To Do List', frequency: 5, progress: 0)