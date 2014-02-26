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


locations = ['Abbey Wood, London', 'Acton, London', 'Addington, London', 'Addiscombe, London', 'Aldborough Hatch, London', 'Aldgate, London', 'Aldwych, London', 'Alperton, London', 'Anerley, London', 'Aperfield, London', 'Archway, London', 'Ardleigh Green, London', 'Arkley, London', 'Arnos Grove, London', 'Balham, London', 'Bankside, London', 'Barbican, London', 'Barking, London', 'Barkingside, London', 'Barnehurst, London', 'Barnes, London', 'Barnes Cray, London', 'Barnet, London', 'Barnsbury, London', 'Battersea, London', 'Bayswater, London', 'Beckenham, London', 'Beckton, London', 'Becontree, London', 'Becontree Heath, London', 'Beddington, London', 'Bedford Park, London', 'Belgravia, London', 'Bellingham, London', 'Belmont, London', 'Belmont, London', 'Belsize Park, London', 'Belvedere, London', 'Bermondsey, London', 'Berrylands, London', 'Bethnal Green, London', 'Bexley, London', 'Bexleyheath, London', 'Bickley, London', 'Biggin Hill, London', 'Blackfen, London', 'Blackfriars, London', 'Blackheath, London', 'Blackwall, London', 'Bloomsbury, London', 'Botany Bay, London', 'Bounds Green, London', 'Bow, London', 'Bowes Park, London', 'Brentford, London', 'Brent Cross, London', 'Brent Park, London', 'Brimsdown, London', 'Brixton, London', 'Brockley, London', 'Bromley, London', 'Bromley, London', 'Bromley Common, London', 'Brompton, London', 'Brondesbury, London', 'Brunswick Park, London', 'Bulls Cross, London', 'Burnt Oak, London', 'Burroughs, London', 'Camberwell, London', 'Cambridge Heath, London', 'Camden Town, London', 'Canary Wharf, London', 'Cann Hall, London', 'Canning Town, London', 'Canonbury, London', 'Carshalton, London', 'Castelnau, London', 'Catford, London', 'Chadwell Heath, London', 'Chalk Farm, London', 'Charing Cross, London', 'Charlton, London', 'Chase Cross, London', 'Cheam, London', 'Chelsea, London', 'Chelsfield, London', 'Chessington, London', 'Childs Hill, London', 'Chinatown, London', 'Chingford, London', 'Chislehurst, London', 'Chiswick, London', 'Church End, London', 'Church End, London', 'Clapham, London', 'Clerkenwell, London', 'Cockfosters, London', 'Colindale, London', 'Collier Row, London', 'Colliers Wood, London', 'Colney Hatch, London', 'Colyers, London', 'Coney Hall, London', 'Coombe, London', 'Coombe, London', 'Coulsdon, London', 'Covent Garden, London', 'Cowley, London', 'Cranford, London', 'Cranham, London', 'Crayford, London', 'Creekmouth, London', 'Crews Hill, London', 'Cricklewood, London', 'Crofton Park, London', 'Crook Log, London', 'Crossness, London', 'Crouch End, London', 'Croydon, London', 'Crystal Palace, London', 'Cubitt Town, London', 'Cudham, London', 'Custom House, London', 'Dagenham, London', 'Dalston, London', 'Dartmouth Park, London', 'De Beauvoir Town, London', 'Denmark Hill, London', 'Deptford, London', 'Dollis Hill, London', 'Downe, London', 'Downham, London', 'Dulwich, London', 'Ealing, London', 'Earls Court, London', 'Earlsfield, London', 'East Barnet, London', 'East Bedfont, London', 'East Dulwich, London', 'East Finchley, London', 'East Ham, London', 'East Sheen, London', 'Eastcote, London', 'Eden Park, London', 'Edgware, London', 'Edmonton, London', 'Eel Pie Island, London', 'Elephant and Castle, London', 'Elm Park, London', 'Elmers End, London', 'Elmstead Woods, London', 'Eltham, London', 'Emerson Park, London', 'Enfield Highway, London', 'Enfield Lock, London', 'Enfield Town, London', 'Enfield Wash, London', 'Erith, London', 'Falconwood, London', 'Farringdon, London', 'Feltham, London', 'Finchley, London', 'Finsbury, London', 'Finsbury Park, London', 'Fitzrovia, London', 'Foots Cray, London', 'Forest Gate, London', 'Forest Hill, London', 'Forestdale, London', 'Fortis Green, London', 'Freezywater, London', 'Friern Barnet, London', 'Frognal, London', 'Fulham, London', 'Fulwell, London', 'Gallows Corner, London', 'Gants Hill, London', 'Gidea Park, London', 'Gipsy Hill, London', 'Goddington, London', 'Golders Green, London', 'Goodmayes, London', 'Gospel Oak, London', 'Grahame Park, London', 'Grange Park, London', 'Greenford, London', 'Greenwich, London', 'Grove Park, London', 'Gunnersbury, London', 'Hackney, London', 'Hackney Marshes, London', 'Hackney Wick, London', 'Hadley Wood, London', 'Haggerston, London', 'Hainault, London', 'The Hale, London', 'Ham, London', 'Hammersmith, London', 'Hampstead, London', 'Hampstead Garden Suburb, London', 'Hampton, London', 'Hampton Hill, London', 'Hampton Wick, London', 'Hanwell, London', 'Hanworth, London', 'Harefield, London', 'Harlesden, London', 'Harlington, London', 'Harmondsworth, London', 'Harold Hill, London', 'Harold Park, London', 'Harold Wood, London', 'Harringay, London', 'Harrow, London', 'Harrow on the Hill, London', 'Harrow Weald, London', 'Hatch End, London', 'Hatton, London', 'Havering-atte-Bower, London', 'Hayes, London', 'Hayes, London', 'Hendon, London', 'Herne Hill, London', 'Heston, London', 'Highams Park, London', 'Highbury, London', 'Highgate, London', 'Hillingdon, London', 'Hither Green, London', 'Holborn, London', 'Holland Park, London', 'Holloway, London', 'Homerton, London', 'Honor Oak, London', 'Hook, London', 'Hornchurch, London', 'Hornsey, London', 'Hounslow, London', 'Hoxton, London', 'The Hyde, London', 'Ickenham, London', 'Ilford, London', 'Isle of Dogs, London', 'Isleworth, London', 'Islington, London', 'Kenley, London', 'Kennington, London', 'Kensal Green, London', 'Kensington, London', 'Kentish Town, London', 'Kenton, London', 'Keston, London', 'Kew, London', 'Kidbrooke, London', 'Kilburn, London', 'Kings Cross, London', 'Kingsbury, London', 'Kingston Vale, London', 'Kingston upon Thames, London', 'Knightsbridge, London', 'Lambeth, London', 'Lamorbey, London', 'Lampton, London', 'Lea Bridge, London', 'Leamouth, London', 'Leaves Green, London', 'Lee, London', 'Lewisham, London', 'Leyton, London', 'Leytonstone, London', 'Limehouse, London', 'Lisson Grove, London', 'Little Ilford, London', 'Locksbottom, London', 'Longford, London', 'Longlands, London', 'Lower Clapton, London', 'Lower Morden, London', 'Loxford, London', 'Maida Vale, London', 'Malden Rushett, London', 'Manor House, London', 'Manor Park, London', 'Marks Gate, London', 'Maryland, London', 'Marylebone, London', 'Mayfair, London', 'Maze Hill, London', 'Merton Park, London', 'Mile End, London', 'Mill Hill, London', 'Millbank, London', 'Millwall, London', 'Mitcham, London', 'Monken Hadley, London', 'Morden, London', 'Morden Park, London', 'Mortlake, London', 'Motspur Park, London', 'Mottingham, London', 'Muswell Hill, London', 'Nags Head, London', 'Neasden, London', 'New Addington, London', 'New Barnet, London', 'New Cross, London', 'New Eltham, London', 'New Malden, London', 'New Southgate, London', 'Newbury Park, London', 'Newington, London', 'Nine Elms, London', 'Noak Hill, London', 'Norbiton, London', 'Norbury, London', 'North End, London', 'North Finchley, London', 'North Harrow, London', 'North Kensington, London', 'North Ockendon, London', 'North Sheen, London', 'North Woolwich, London', 'Northolt, London', 'Northumberland Heath, London', 'Northwood, London', 'Norwood Green, London', 'Notting Hill, London', 'Nunhead, London', 'Oakleigh Park, London', 'Old Coulsdon, London', 'Old Ford, London', 'Old Malden, London', 'Old Oak Common, London', 'Orpington, London', 'Osidge, London', 'Osterley, London', 'Paddington, London', 'Palmers Green, London', 'Park Royal, London', 'Parsons Green, London', 'Peckham, London', 'Penge, London', 'Pentonville, London', 'Perivale, London', 'Petersham, London', 'Petts Wood, London', 'Pimlico, London', 'Pinner, London', 'Plaistow, London', 'Plaistow, London', 'Plumstead, London', 'Ponders End, London', 'Poplar, London', 'Pratts Bottom, London', 'Preston, London', 'Primrose Hill, London', 'Purley, London', 'Putney, London', 'Queens Park, London', 'Queensbury, London', 'Rainham, London', 'Ratcliff, London', 'Rayners Lane, London', 'Raynes Park, London', 'Redbridge, London', 'Richmond, London', 'Riddlesdown, London', 'Roehampton, London', 'Romford, London', 'Rotherhithe, London', 'Ruislip, London', 'Rush Green, London', 'Ruxley, London', 'Sanderstead, London', 'Sands End, London', 'Selhurst, London', 'Selsdon, London', 'Seven Kings, London', 'Seven Sisters, London', 'Shacklewell, London', 'Shadwell, London', 'Shepherds Bush, London', 'Shirley, London', 'Shooters Hill, London', 'Shoreditch, London', 'Sidcup, London', 'Silvertown, London', 'Sipson, London', 'Slade Green, London', 'Snaresbrook, London', 'Soho, London', 'Somerstown, London', 'South Croydon, London', 'South Hackney, London', 'South Harrow, London', 'South Hornchurch, London', 'South Kensington, London', 'South Norwood, London', 'South Ruislip, London', 'South Wimbledon, London', 'South Woodford, London', 'South Tottenham, London', 'Southall, London', 'Southborough, London', 'Southfields, London', 'Southgate, London', 'Spitalfields, London', 'St Helier, London', 'St Jamess, London', 'St Margarets, London', 'St Giles, London', 'St Johns, London', 'St Johns Wood, London', 'St Lukes, London', 'St Mary Cray, London', 'St Pancras, London', 'St Pauls Cray, London', 'Stamford Hill, London', 'Stanmore, London', 'Stepney, London', 'Stockwell, London', 'Stoke Newington, London', 'Stratford, London', 'Strawberry Hill, London', 'Streatham, London', 'Stroud Green, London', 'Sudbury, London', 'Surbiton, London', 'Surrey Quays, London', 'Sutton, London', 'Swiss Cottage, London', 'Sydenham, London', 'Sydenham Hill, London', 'Teddington, London', 'Temple, London', 'Thamesmead, London', 'Thornton Heath, London', 'Tokyngton, London', 'Tolworth, London', 'Tooting, London', 'Tooting Bec, London', 'Tottenham, London', 'Tottenham Green, London', 'Tottenham Hale, London', 'Totteridge, London', 'Tower Hill, London', 'Tufnell Park, London', 'Tulse Hill, London', 'Turnpike Lane, London', 'Twickenham, London', 'Upminster, London', 'Upminster Bridge, London', 'Upper Clapton, London', 'Upper Norwood, London', 'Upper Walthamstow, London', 'Upton, London', 'Upton Park, London', 'Uxbridge, London', 'Vauxhall, London', 'Waddon, London', 'Wallington, London', 'Walthamstow, London', 'Walthamstow Village, London', 'Walworth, London', 'Wandsworth, London', 'Wanstead, London', 'Wapping, London', 'Wealdstone, London', 'Welling, London', 'Wembley, London', 'Wembley Park, London', 'Wennington, London', 'West Brompton, London', 'West Drayton, London', 'West Ealing, London', 'West Green, London', 'West Ham, London', 'West Hampstead, London', 'West Harrow, London', 'West Heath, London', 'West Hendon, London', 'West Kensington, London', 'West Norwood, London', 'West Wickham, London', 'Westcombe Park, London', 'Westminster, London', 'Whetstone, London', 'White City, London', 'Whitechapel, London', 'Whitton, London', 'Willesden, London', 'Wimbledon, London', 'Winchmore Hill, London', 'Wood Green, London', 'Woodford, London', 'Woodford Green, London', 'Woodlands, London', 'Woodside, London', 'Woodside Park, London', 'Woolwich, London', 'Worcester Park, London', 'Wormwood Scrubs, London', 'Yeading, London', 'Yiewsley']

100.times do
  User.create name: Faker::Name.name , email: Faker::Internet.email, password: 'password', location: locations.sample, gender: genders.sample, preference: preference.sample, dob: '1980-01-01', interest_list: interests.sample(5).join(', '), description: 'Chocolate bar lollipop gingerbread. Muffin bear claw marzipan. Cheesecake fruitcake icing toffee carrot cake sweet. Toffee danish gummi bears pudding lollipop dragée. Wafer applicake danish lollipop croissant. Powder jujubes chocolate cake jujubes jelly-o. Jelly jelly-o jujubes sweet roll toffee donut cheesecake. Pie chocolate bar danish brownie caramels. Bonbon chocolate cake dessert marzipan. Powder brownie jelly lollipop candy canes. Cotton candy chocolate cake halvah. Cotton candy powder bonbon marzipan marshmallow jelly-o lemon drops.'
end

User.all.each do |user|
  20.times do
    user1 = User.all.sample
    user.vote voter: user1 unless user == user1
  end
end

