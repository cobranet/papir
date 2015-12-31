# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Language.delete_all
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

Card.delete_all

cards = [ { letters: "P",
            value: 2,
            price: 7,
            bottom_text: "+3 card next hand",
            color: "brown"
          },
          { letters: "A",
            value: 2,
            price: 2,
            bottom_text: "Trash after use",
            color: "776600"
          }
        ]
cards.each do |c|
  Card.create(c)
end
  
