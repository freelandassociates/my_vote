# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Constituency.create!(postcode: 'LN42UN', constituency_id: '373', constituency_name: 'Lincoln')
Constituency.create!(postcode: 'NG347LN', constituency_id: '521', constituency_name: 'Sleaford and North Hykeham')
Constituency.create!(postcode: 'SW1A2AA', constituency_id: '147', constituency_name: 'Cities of London and Westminster')
Constituency.create!(postcode: 'N134BS', constituency_id: '238', constituency_name: 'Enfield, Southgate')


Candidate.create!(constituency_id: '373', candidate_id: '1', candidate_name: 'Karl McCartney', party: 'Conservative')
Candidate.create!(constituency_id: '373', candidate_id: '2', candidate_name: 'Gillian Merron', party: 'Labour')
Candidate.create!(constituency_id: '373', candidate_id: '3', candidate_name: 'Reg Shore', party: 'Liberal Democrat')
Candidate.create!(constituency_id: '373', candidate_id: '4', candidate_name: 'Robert West', party: 'British National Party')
Candidate.create!(constituency_id: '373', candidate_id: '5', candidate_name: 'Nick Smith', party: 'UK Independence Party')
Candidate.create!(constituency_id: '373', candidate_id: '6', candidate_name: 'Ernest Coleman', party: 'English Democrats')
Candidate.create!(constituency_id: '373', candidate_id: '7', candidate_name: 'Gary Walker', party: 'Independent')

Candidate.create!(constituency_id: '521', candidate_id: '8', candidate_name: 'Stephen Phillips', party: 'Conservative')
Candidate.create!(constituency_id: '521', candidate_id: '9', candidate_name: 'David Harding-Price', party: 'Liberal Democrat')
Candidate.create!(constituency_id: '521', candidate_id: '10', candidate_name: 'James Normington', party: 'Labour')
Candidate.create!(constituency_id: '521', candidate_id: '11', candidate_name: 'Marianne Overton', party: 'Lincolnshire Independents')
Candidate.create!(constituency_id: '521', candidate_id: '12', candidate_name: 'Rodger Doughty', party: 'UK Independence Party')
Candidate.create!(constituency_id: '521', candidate_id: '13', candidate_name: 'Mike Clayton', party: 'British National Party')

Candidate.create!(constituency_id: '147', candidate_id: '14', candidate_name: 'Mark Field', party: 'Conservative')
Candidate.create!(constituency_id: '147', candidate_id: '15', candidate_name: 'David Rowntree', party: 'Labour')
Candidate.create!(constituency_id: '147', candidate_id: '16', candidate_name: 'Naomi Smith', party: 'Liberal Democrat')
Candidate.create!(constituency_id: '147', candidate_id: '17', candidate_name: 'Derek Chase', party: 'Green')
Candidate.create!(constituency_id: '147', candidate_id: '18', candidate_name: 'Paul Weston', party: 'UK Independence Party')
Candidate.create!(constituency_id: '147', candidate_id: '19', candidate_name: 'Frank Roseman', party: 'English Democrats')
Candidate.create!(constituency_id: '147', candidate_id: '20', candidate_name: 'Dennis Delderfield', party: 'Independent')
Candidate.create!(constituency_id: '147', candidate_id: '21', candidate_name: 'Jack Nunn', party: 'Pirate Party UK')
Candidate.create!(constituency_id: '147', candidate_id: '22', candidate_name: "Mad Cap'n Tom", party: 'Independent')

Candidate.create!(constituency_id: '238', candidate_id: '23', candidate_name: 'David Burrowes', party: 'Conservative')
Candidate.create!(constituency_id: '238', candidate_id: '24', candidate_name: 'Bambos Charalambous', party: 'Labour')
Candidate.create!(constituency_id: '238', candidate_id: '25', candidate_name: 'Johar Kahn', party: 'Liberal Democrat')
Candidate.create!(constituency_id: '238', candidate_id: '26', candidate_name: 'Peter Krakowiak', party: 'Green')
Candidate.create!(constituency_id: '238', candidate_id: '27', candidate_name: 'Bob Brock', party: 'UK Independence Party')
Candidate.create!(constituency_id: '238', candidate_id: '28', candidate_name: 'Asit Mukhopadhyay', party: 'Independent')
Candidate.create!(constituency_id: '238', candidate_id: '29', candidate_name: 'Samad Billoo', party: 'Respect-Unity Coalition')
Candidate.create!(constituency_id: '238', candidate_id: '30', candidate_name: 'Ben Weald', party: 'English Democrats')
Candidate.create!(constituency_id: '238', candidate_id: '31', candidate_name: 'Mal Malakounides', party: 'Independent')
Candidate.create!(constituency_id: '238', candidate_id: '32', candidate_name: 'Jeremy Sturgess', party: 'Better Britain Party, The')
