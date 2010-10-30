# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
QuestionType.create([{:question_type => 'shortAnswer', :friendly_name => 'Short answer'}])
QuestionType.create([{:question_type => 'multipleChoice', :friendly_name => 'Multiple choice'}])
QuestionType.create([{:question_type => 'longAnswer', :friendly_name => 'Long answer'}])
QuestionType.create([{:question_type => 'dropDown', :friendly_name => 'Drop down'}])
