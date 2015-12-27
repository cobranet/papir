# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

languages = [ { ISO6391: 'en',
                ISO6392: 'eng',
                name: 'English',
              },
              { ISO6391: 'sp',
                ISO6392: 'srp',
                name: 'Srpski',
              }]
languages.each do |l|
  Language.create(l)
end  
