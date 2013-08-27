# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([[ name: 'Chicago' ], [ name: 'Copenhagen' ]])
#   Mayor.create(name: 'Emanuel', city: cities.first)

team_list = [
  [ 'Baltimore Ravens', true], [ 'Cincinnati Bengals',  true], [ 'Cleveland Browns',  true], 
  [ 'Pittsburgh Steelers',  true], [ 'Chicago Bears',  true], [ 'Detroit Lions',  true],
  [ 'Green Bay Packers',  true], [ 'Minnesota Vikings',  true], [ 'Houston Texans',  true],
  [ 'Indianapolis Colts',  true], [ 'Jacksonville Jaguars',  true], [ 'Tennesse Titans',  true],
  [ 'Atlanta Falcons',  true], [ 'Carolina Panthers',  true], [ 'New Orleans Saints',  true],
  [ 'Tampa Bay Buccaneers',  true], [ 'Buffalo Bills',  true], [ 'Miami Dolphins',  true],
  [ 'New England Patriots',  true], [ 'New York Jets',  true], [ 'Dallas Cowboys',  true],
  [ 'New York Giants',  true], [ 'Philadelphia Eagles',  true], [ 'Washington Redskins',  true],
  [ 'Denver Broncos',  true], [ 'Kansas City Chiefs',  true], [ 'Oakland Raiders',  true],
  [ 'San Diego Chargers',  true], [ 'Arizona Cardinals',  true], [ 'San Francisco 49ers',  true],
  [ 'Seattle Seahawks',  true], [ 'St. Louis Rams',  true]
]
                               
team_list.each do |name, available|
  Team.create(name: name, available: available )
end  

syndicate_list = [ 'Scott', 'Larry', 'Master', 'Gnade', 'Nitin', 'Veltman', 'Caruso' ]

syndicate_list.each do | name |
  Syndicate.create(name: name)
end  