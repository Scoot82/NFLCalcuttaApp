# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([[ name: 'Chicago' ], [ name: 'Copenhagen' ]])
#   Mayor.create(name: 'Emanuel', city: cities.first)

team_list = [
  [ 'Baltimore Ravens', 'available'], [ 'Cincinnati Bengals',  'available'], [ 'Cleveland Browns',  'available'], 
  [ 'Pittsburgh Steelers',  'available'], [ 'Chicago Bears',  'available'], [ 'Detroit Lions',  'available'],
  [ 'Green Bay Packers',  'available'], [ 'Minnesota Vikings',  'available'], [ 'Houston Texans',  'available'],
  [ 'Indianapolis Colts',  'available'], [ 'Jacksonville Jaguars',  'available'], [ 'Tennesse Titans',  'available'],
  [ 'Atlanta Falcons',  'available'], [ 'Carolina Panthers',  'available'], [ 'New Orleans Saints',  'available'],
  [ 'Tampa Bay Buccaneers',  'available'], [ 'Buffalo Bills',  'available'], [ 'Miami Dolphins',  'available'],
  [ 'New England Patriots',  'available'], [ 'New York Jets',  'available'], [ 'Dallas Cowboys',  'available'],
  [ 'New York Giants',  'available'], [ 'Philadelphia Eagles',  'available'], [ 'Washington Redskins',  'available'],
  [ 'Denver Broncos',  'available'], [ 'Kansas City Chiefs',  'available'], [ 'Oakland Raiders',  'available'],
  [ 'San Diego Chargers',  'available'], [ 'Arizona Cardinals',  'available'], [ 'San Francisco 49ers',  'available'],
  [ 'Seattle Seahawks',  'available'], [ 'St. Louis Rams',  'available']
]
                               
team_list.each do |name, available|
  Team.create(name: name, available: available, wins: 0)
end  

syndicate_list = [ 'Scott', 'Larry', 'Master', 'Gnade', 'Nitin', 'Veltman']

syndicate_list.each do | name |
  Syndicate.create(name: name)
end 

User.create(login: 'Scott', password: 'Letmein1', password_confirmation: 'Letmein1', role: 'admin')