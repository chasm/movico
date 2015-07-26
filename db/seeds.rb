# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cohort.destroy_all
Student.destroy_all

cohorts = Cohort.create([
  {
    name: "Miromiro",
    starts_on: Date.new()
  },
  {
    name: "Toratoratora",
    starts_on: Date.new()
  }
])

students = Student.create([
  {
    name: "Bob",
    cohorts: [ cohorts[0] ]
  },
  {
    name: "Ted",
    cohorts: [ cohorts[0] ]
  },
  {
    name: "Carol",
    cohorts: cohorts
  },
  {
    name: "Alice",
    cohorts: [ cohorts[1] ]
  },
  {
    name: "Joe",
    cohorts: [ cohorts[1] ]
  }
])
