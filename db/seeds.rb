# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

interests = ['Animal fancying', 'Amateur radio', 'Audiophilia', 'Baton twirling', 'Bboying', 'Blogging', 'Chainmail making', 'Coloring', 'Computer programming', 'Conlanging', 'Cooking', 'Cosplaying', 'Creative writing', 'Crocheting', 'Dance', 'Digital Arts', 'Drama', 'Drawing', 'Embroidery', 'Fantasy Sports', 'Fishkeeping', 'Foreign language learning', 'Gaming', 'Genealogy', 'Genetic genealogy', 'Herpetoculture', 'Home Movies', 'Homebrewing', 'Jewelry making', 'Juggling', 'Knapping', 'Knitting', 'K-pop', 'Lacemaking', 'Lapidary', 'Leather crafting', 'Lego Building', 'Locksport', 'Magic', 'Modeling', 'Model Building', 'Model Railroading', 'Origami', 'Painting', 'Ping Pong', 'Playing Musical Instrument', 'Pottery', 'Quilting', 'RC cars', 'Reading', 'Scrapbooking', 'Sculpting', 'Sewing', 'Singing', 'Soapmaking', 'Speedsolving', 'Taxidermy', 'Video Gaming', 'Wood carving', 'Woodworking', 'Worldbuilding', 'Writing', 'Yoga', 'Yo-yoing']
genders = ['male', 'female']
preference = ['male', 'female', 'both']


locations = ['Abbey Wood', 'Acton', 'Addington', 'Addiscombe', 'Aldborough Hatch', 'Aldgate', 'Aldwych', 'Alperton', 'Anerley', 'Aperfield', 'Archway', 'Ardleigh Green', 'Arkley', 'Arnos Grove', 'Balham', 'Bankside', 'Barbican', 'Barking', 'Barkingside', 'Barnehurst', 'Barnes', 'Barnes Cray', 'Barnet', 'Barnsbury', 'Battersea', 'Bayswater', 'Beckenham', 'Beckton', 'Becontree', 'Becontree Heath', 'Beddington', 'Bedford Park', 'Belgravia', 'Bellingham', 'Belmont', 'Belmont', 'Belsize Park', 'Belvedere', 'Bermondsey', 'Berrylands', 'Bethnal Green', 'Bexley', 'Bexleyheath', 'Bickley', 'Biggin Hill', 'Blackfen', 'Blackfriars', 'Blackheath', 'Blackwall', 'Bloomsbury', 'Botany Bay', 'Bounds Green', 'Bow', 'Bowes Park', 'Brentford', 'Brent Cross', 'Brent Park', 'Brimsdown', 'Brixton', 'Brockley', 'Bromley', 'Bromley', 'Bromley Common', 'Brompton', 'Brondesbury', 'Brunswick Park', 'Bulls Cross', 'Burnt Oak', 'Burroughs', 'Camberwell', 'Cambridge Heath', 'Camden Town', 'Canary Wharf', 'Cann Hall', 'Canning Town', 'Canonbury', 'Carshalton', 'Castelnau', 'Catford', 'Chadwell Heath', 'Chalk Farm', 'Charing Cross', 'Charlton', 'Chase Cross', 'Cheam', 'Chelsea', 'Chelsfield', 'Chessington', 'Childs Hill', 'Chinatown', 'Chingford', 'Chislehurst', 'Chiswick', 'Church End', 'Church End', 'Clapham', 'Clerkenwell', 'Cockfosters', 'Colindale', 'Collier Row', 'Colliers Wood', 'Colney Hatch', 'Colyers', 'Coney Hall', 'Coombe', 'Coombe', 'Coulsdon', 'Covent Garden', 'Cowley', 'Cranford', 'Cranham', 'Crayford', 'Creekmouth', 'Crews Hill', 'Cricklewood', 'Crofton Park', 'Crook Log', 'Crossness', 'Crouch End', 'Croydon', 'Crystal Palace', 'Cubitt Town', 'Cudham', 'Custom House', 'Dagenham', 'Dalston', 'Dartmouth Park', 'De Beauvoir Town', 'Denmark Hill', 'Deptford', 'Dollis Hill', 'Downe', 'Downham', 'Dulwich', 'Ealing', 'Earls Court', 'Earlsfield', 'East Barnet', 'East Bedfont', 'East Dulwich', 'East Finchley', 'East Ham', 'East Sheen', 'Eastcote', 'Eden Park', 'Edgware', 'Edmonton', 'Eel Pie Island', 'Elephant and Castle', 'Elm Park', 'Elmers End', 'Elmstead Woods', 'Eltham', 'Emerson Park', 'Enfield Highway', 'Enfield Lock', 'Enfield Town', 'Enfield Wash', 'Erith', 'Falconwood', 'Farringdon', 'Feltham', 'Finchley', 'Finsbury', 'Finsbury Park', 'Fitzrovia', 'Foots Cray', 'Forest Gate', 'Forest Hill', 'Forestdale', 'Fortis Green', 'Freezywater', 'Friern Barnet', 'Frognal', 'Fulham', 'Fulwell', 'Gallows Corner', 'Gants Hill', 'Gidea Park', 'Gipsy Hill', 'Goddington', 'Golders Green', 'Goodmayes', 'Gospel Oak', 'Grahame Park', 'Grange Park', 'Greenford', 'Greenwich', 'Grove Park', 'Gunnersbury', 'Hackney', 'Hackney Marshes', 'Hackney Wick', 'Hadley Wood', 'Haggerston', 'Hainault', 'The Hale', 'Ham', 'Hammersmith', 'Hampstead', 'Hampstead Garden Suburb', 'Hampton', 'Hampton Hill', 'Hampton Wick', 'Hanwell', 'Hanworth', 'Harefield', 'Harlesden', 'Harlington', 'Harmondsworth', 'Harold Hill', 'Harold Park', 'Harold Wood', 'Harringay', 'Harrow', 'Harrow on the Hill', 'Harrow Weald', 'Hatch End', 'Hatton', 'Havering-atte-Bower', 'Hayes', 'Hayes', 'Hendon', 'Herne Hill', 'Heston', 'Highams Park', 'Highbury', 'Highgate', 'Hillingdon', 'Hither Green', 'Holborn', 'Holland Park', 'Holloway', 'Homerton', 'Honor Oak', 'Hook', 'Hornchurch', 'Hornsey', 'Hounslow', 'Hoxton', 'The Hyde', 'Ickenham', 'Ilford', 'Isle of Dogs', 'Isleworth', 'Islington', 'Kenley', 'Kennington', 'Kensal Green', 'Kensington', 'Kentish Town', 'Kenton', 'Keston', 'Kew', 'Kidbrooke', 'Kilburn', 'Kings Cross', 'Kingsbury', 'Kingston Vale', 'Kingston upon Thames', 'Knightsbridge', 'Lambeth', 'Lamorbey', 'Lampton', 'Lea Bridge', 'Leamouth', 'Leaves Green', 'Lee', 'Lewisham', 'Leyton', 'Leytonstone', 'Limehouse', 'Lisson Grove', 'Little Ilford', 'Locksbottom', 'Longford', 'Longlands', 'Lower Clapton', 'Lower Morden', 'Loxford', 'Maida Vale', 'Malden Rushett', 'Manor House', 'Manor Park', 'Marks Gate', 'Maryland', 'Marylebone', 'Mayfair', 'Maze Hill', 'Merton Park', 'Mile End', 'Mill Hill', 'Millbank', 'Millwall', 'Mitcham', 'Monken Hadley', 'Morden', 'Morden Park', 'Mortlake', 'Motspur Park', 'Mottingham', 'Muswell Hill', 'Nags Head', 'Neasden', 'New Addington', 'New Barnet', 'New Cross', 'New Eltham', 'New Malden', 'New Southgate', 'Newbury Park', 'Newington', 'Nine Elms', 'Noak Hill', 'Norbiton', 'Norbury', 'North End', 'North Finchley', 'North Harrow', 'North Kensington', 'North Ockendon', 'North Sheen', 'North Woolwich', 'Northolt', 'Northumberland Heath', 'Northwood', 'Norwood Green', 'Notting Hill', 'Nunhead', 'Oakleigh Park', 'Old Coulsdon', 'Old Ford', 'Old Malden', 'Old Oak Common', 'Orpington', 'Osidge', 'Osterley', 'Paddington', 'Palmers Green', 'Park Royal', 'Parsons Green', 'Peckham', 'Penge', 'Pentonville', 'Perivale', 'Petersham', 'Petts Wood', 'Pimlico', 'Pinner', 'Plaistow', 'Plaistow', 'Plumstead', 'Ponders End', 'Poplar', 'Pratts Bottom', 'Preston', 'Primrose Hill', 'Purley', 'Putney', 'Queens Park', 'Queensbury', 'Rainham', 'Ratcliff', 'Rayners Lane', 'Raynes Park', 'Redbridge', 'Richmond', 'Riddlesdown', 'Roehampton', 'Romford', 'Rotherhithe', 'Ruislip', 'Rush Green', 'Ruxley', 'Sanderstead', 'Sands End', 'Selhurst', 'Selsdon', 'Seven Kings', 'Seven Sisters', 'Shacklewell', 'Shadwell', 'Shepherds Bush', 'Shirley', 'Shooters Hill', 'Shoreditch', 'Sidcup', 'Silvertown', 'Sipson', 'Slade Green', 'Snaresbrook', 'Soho', 'Somerstown', 'South Croydon', 'South Hackney', 'South Harrow', 'South Hornchurch', 'South Kensington', 'South Norwood', 'South Ruislip', 'South Wimbledon', 'South Woodford', 'South Tottenham', 'Southall', 'Southborough', 'Southfields', 'Southgate', 'Spitalfields', 'St Helier', 'St Jamess', 'St Margarets', 'St Giles', 'St Johns', 'St Johns Wood', 'St Lukes', 'St Mary Cray', 'St Pancras', 'St Pauls Cray', 'Stamford Hill', 'Stanmore', 'Stepney', 'Stockwell', 'Stoke Newington', 'Stratford', 'Strawberry Hill', 'Streatham', 'Stroud Green', 'Sudbury', 'Surbiton', 'Surrey Quays', 'Sutton', 'Swiss Cottage', 'Sydenham', 'Sydenham Hill', 'Teddington', 'Temple', 'Thamesmead', 'Thornton Heath', 'Tokyngton', 'Tolworth', 'Tooting', 'Tooting Bec', 'Tottenham', 'Tottenham Green', 'Tottenham Hale', 'Totteridge', 'Tower Hill', 'Tufnell Park', 'Tulse Hill', 'Turnpike Lane', 'Twickenham', 'Upminster', 'Upminster Bridge', 'Upper Clapton', 'Upper Norwood', 'Upper Walthamstow', 'Upton', 'Upton Park', 'Uxbridge', 'Vauxhall', 'Waddon', 'Wallington', 'Walthamstow', 'Walthamstow Village', 'Walworth', 'Wandsworth', 'Wanstead', 'Wapping', 'Wealdstone', 'Welling', 'Wembley', 'Wembley Park', 'Wennington', 'West Brompton', 'West Drayton', 'West Ealing', 'West Green', 'West Ham', 'West Hampstead', 'West Harrow', 'West Heath', 'West Hendon', 'West Kensington', 'West Norwood', 'West Wickham', 'Westcombe Park', 'Westminster', 'Whetstone', 'White City', 'Whitechapel', 'Whitton', 'Willesden', 'Wimbledon', 'Winchmore Hill', 'Wood Green', 'Woodford', 'Woodford Green', 'Woodlands', 'Woodside', 'Woodside Park', 'Woolwich', 'Worcester Park', 'Wormwood Scrubs', 'Yeading', 'Yiewsley']

100.times do
  User.create name: Faker::Name.name , email: Faker::Internet.email, password: 'password', location: locations.sample, gender: genders.sample, preference: preference.sample, dob: '1980-01-01', interest_list: interests.sample(5).join(', '), description: 'Chocolate bar lollipop gingerbread. Muffin bear claw marzipan. Cheesecake fruitcake icing toffee carrot cake sweet. Toffee danish gummi bears pudding lollipop dragée. Wafer applicake danish lollipop croissant. Powder jujubes chocolate cake jujubes jelly-o. Jelly jelly-o jujubes sweet roll toffee donut cheesecake. Pie chocolate bar danish brownie caramels. Bonbon chocolate cake dessert marzipan. Powder brownie jelly lollipop candy canes. Cotton candy chocolate cake halvah. Cotton candy powder bonbon marzipan marshmallow jelly-o lemon drops.'
end

