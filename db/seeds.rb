# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

et = EdgeType.create([{ name: "Strategy->Objective", source_type: "Strategy", sink_type: "Objective"}, { name: "Child->Parent", source_type: "Child", sink_type: "Parent"}])