CREATE TABLE location (
    id    BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    state varchar,
    city  VARCHAR,
    CONSTRAINT city_should_have_state CHECK (state IS NOT NULL OR city IS NULL),
    CONSTRAINT unique_state_city UNIQUE (state, city) -- Add "NULLS NOT DISTINCT" in Postgres 15
);

INSERT INTO location(state, city)
VALUES (NULL, NULL), -- US
    ('AL', NULL),
    ('AK', NULL),
    ('AZ', NULL),
    ('AR', NULL),
    ('CA', NULL),
    ('CO', NULL),
    ('CT', NULL),
    ('DE', NULL),
    ('DC', NULL),
    ('FL', NULL),
    ('GA', NULL),
    ('HI', NULL),
    ('ID', NULL),
    ('IL', NULL),
    ('IN', NULL),
    ('IA', NULL),
    ('KS', NULL),
    ('KY', NULL),
    ('LA', NULL),
    ('ME', NULL),
    ('MD', NULL),
    ('MA', NULL),
    ('MI', NULL),
    ('MN', NULL),
    ('MS', NULL),
    ('MO', NULL),
    ('MT', NULL),
    ('NE', NULL),
    ('NV', NULL),
    ('NH', NULL),
    ('NJ', NULL),
    ('NM', NULL),
    ('NY', NULL),
    ('NC', NULL),
    ('ND', NULL),
    ('OH', NULL),
    ('OK', NULL),
    ('OR', NULL),
    ('PA', NULL),
    ('RI', NULL),
    ('SC', NULL),
    ('SD', NULL),
    ('TN', NULL),
    ('TX', NULL),
    ('UT', NULL),
    ('VT', NULL),
    ('VA', NULL),
    ('WA', NULL),
    ('WV', NULL),
    ('WI', NULL),
    ('WY', NULL),
    ('IA', 'Ankeny'),
    ('UT', 'Bountiful'),
    ('NY', 'New York'),
    ('CA', 'Los Angeles'),
    ('IL', 'Chicago'),
    ('TX', 'Houston'),
    ('AZ', 'Phoenix'),
    ('PA', 'Philadelphia'),
    ('TX', 'San Antonio'),
    ('CA', 'San Diego'),
    ('TX', 'Dallas'),
    ('CA', 'San Jose'),
    ('TX', 'Austin'),
    ('FL', 'Jacksonville'),
    ('CA', 'San Francisco'),
    ('OH', 'Columbus'),
    ('IN', 'Indianapolis'),
    ('TX', 'Fort Worth'),
    ('NC', 'Charlotte'),
    ('WA', 'Seattle'),
    ('CO', 'Denver'),
    ('TX', 'El Paso'),
    ('DC', 'Washington'),
    ('MA', 'Boston'),
    ('MI', 'Detroit'),
    ('TN', 'Nashville-Davidson'),
    ('TN', 'Memphis'),
    ('OR', 'Portland'),
    ('OK', 'Oklahoma City'),
    ('NV', 'Las Vegas'),
    ('KY', 'Louisville/Jefferson County'),
    ('MD', 'Baltimore'),
    ('WI', 'Milwaukee'),
    ('NM', 'Albuquerque'),
    ('AZ', 'Tucson'),
    ('CA', 'Fresno'),
    ('CA', 'Sacramento'),
    ('AZ', 'Mesa'),
    ('MO', 'Kansas City'),
    ('GA', 'Atlanta'),
    ('CA', 'Long Beach'),
    ('CO', 'Colorado Springs'),
    ('NC', 'Raleigh'),
    ('FL', 'Miami'),
    ('VA', 'Virginia Beach'),
    ('NE', 'Omaha'),
    ('CA', 'Oakland'),
    ('MN', 'Minneapolis'),
    ('OK', 'Tulsa'),
    ('TX', 'Arlington'),
    ('LA', 'New Orleans'),
    ('KS', 'Wichita'),
    ('OH', 'Cleveland'),
    ('FL', 'Tampa'),
    ('CA', 'Bakersfield'),
    ('CO', 'Aurora'),
    ('HI', 'Honolulu'),
    ('CA', 'Anaheim'),
    ('CA', 'Santa Ana'),
    ('TX', 'Corpus Christi'),
    ('CA', 'Riverside'),
    ('KY', 'Lexington-Fayette'),
    ('MO', 'St. Louis'),
    ('CA', 'Stockton'),
    ('PA', 'Pittsburgh'),
    ('MN', 'St. Paul'),
    ('OH', 'Cincinnati'),
    ('AK', 'Anchorage'),
    ('NV', 'Henderson'),
    ('NC', 'Greensboro'),
    ('TX', 'Plano'),
    ('NJ', 'Newark'),
    ('NE', 'Lincoln'),
    ('OH', 'Toledo'),
    ('FL', 'Orlando'),
    ('CA', 'Chula Vista'),
    ('CA', 'Irvine'),
    ('IN', 'Fort Wayne'),
    ('NJ', 'Jersey City'),
    ('NC', 'Durham'),
    ('FL', 'St. Petersburg'),
    ('TX', 'Laredo'),
    ('NY', 'Buffalo'),
    ('WI', 'Madison'),
    ('TX', 'Lubbock'),
    ('AZ', 'Chandler'),
    ('AZ', 'Scottsdale'),
    ('AZ', 'Glendale'),
    ('NV', 'Reno'),
    ('TX', 'Kyle'),
    ('VA', 'Norfolk'),
    ('NC', 'Winston-Salem'),
    ('NV', 'North Las Vegas'),
    ('TX', 'Irving'),
    ('VA', 'Chesapeake'),
    ('AZ', 'Gilbert'),
    ('FL', 'Hialeah'),
    ('TX', 'Garland'),
    ('CA', 'Fremont'),
    ('LA', 'Baton Rouge'),
    ('VA', 'Richmond'),
    ('ID', 'Boise City'),
    ('CA', 'San Bernardino'),
    ('WA', 'Spokane'),
    ('IA', 'Des Moines'),
    ('CA', 'Modesto'),
    ('AL', 'Birmingham'),
    ('WA', 'Tacoma'),
    ('CA', 'Fontana'),
    ('NY', 'Rochester'),
    ('CA', 'Oxnard'),
    ('CA', 'Moreno Valley'),
    ('NC', 'Fayetteville'),
    ('IL', 'Aurora'),
    ('CA', 'Glendale'),
    ('NY', 'Yonkers'),
    ('CA', 'Huntington Beach'),
    ('AL', 'Montgomery'),
    ('TX', 'Amarillo'),
    ('AR', 'Little Rock'),
    ('OH', 'Akron'),
    ('GA', 'Columbus'),
    ('GA', 'Augusta-Richmond County'),
    ('MI', 'Grand Rapids'),
    ('LA', 'Shreveport'),
    ('UT', 'Salt Lake City'),
    ('AL', 'Huntsville'),
    ('AL', 'Mobile'),
    ('FL', 'Tallahassee'),
    ('TX', 'Grand Prairie'),
    ('KS', 'Overland Park'),
    ('TN', 'Knoxville'),
    ('FL', 'Port St. Lucie'),
    ('MA', 'Worcester'),
    ('TX', 'Brownsville'),
    ('AZ', 'Tempe'),
    ('CA', 'Santa Clarita'),
    ('VA', 'Newport News'),
    ('FL', 'Cape Coral'),
    ('RI', 'Providence'),
    ('FL', 'Fort Lauderdale'),
    ('TN', 'Chattanooga'),
    ('CA', 'Rancho Cucamonga'),
    ('CA', 'Oceanside'),
    ('CA', 'Santa Rosa'),
    ('CA', 'Garden Grove'),
    ('WA', 'Vancouver'),
    ('SD', 'Sioux Falls'),
    ('CA', 'Ontario'),
    ('TX', 'McKinney'),
    ('CA', 'Elk Grove'),
    ('MS', 'Jackson'),
    ('FL', 'Pembroke Pines'),
    ('OR', 'Salem'),
    ('MO', 'Springfield'),
    ('CA', 'Corona'),
    ('OR', 'Eugene'),
    ('CO', 'Fort Collins'),
    ('AZ', 'Peoria'),
    ('TX', 'Frisco'),
    ('NC', 'Cary'),
    ('CA', 'Lancaster'),
    ('CA', 'Hayward'),
    ('CA', 'Palmdale'),
    ('CA', 'Salinas'),
    ('VA', 'Alexandria'),
    ('CO', 'Lakewood'),
    ('MA', 'Springfield'),
    ('TX', 'Pasadena'),
    ('CA', 'Sunnyvale'),
    ('GA', 'Macon-Bibb County'),
    ('CA', 'Pomona'),
    ('FL', 'Hollywood'),
    ('KS', 'Kansas City'),
    ('CA', 'Escondido'),
    ('TN', 'Clarksville'),
    ('IL', 'Joliet'),
    ('IL', 'Rockford'),
    ('CA', 'Torrance'),
    ('IL', 'Naperville'),
    ('NJ', 'Paterson'),
    ('GA', 'Savannah'),
    ('CT', 'Bridgeport'),
    ('TX', 'Mesquite'),
    ('TX', 'Killeen'),
    ('NY', 'Syracuse'),
    ('TX', 'McAllen'),
    ('CA', 'Pasadena'),
    ('WA', 'Bellevue'),
    ('CA', 'Fullerton'),
    ('CA', 'Orange'),
    ('OH', 'Dayton'),
    ('FL', 'Miramar'),
    ('CO', 'Thornton'),
    ('UT', 'West Valley City'),
    ('KS', 'Olathe'),
    ('VA', 'Hampton'),
    ('MI', 'Warren'),
    ('TX', 'Midland'),
    ('TX', 'Waco'),
    ('SC', 'Charleston'),
    ('SC', 'Columbia'),
    ('TX', 'Denton'),
    ('TX', 'Carrollton'),
    ('AZ', 'Surprise'),
    ('CA', 'Roseville'),
    ('MI', 'Sterling Heights'),
    ('TN', 'Murfreesboro'),
    ('FL', 'Gainesville'),
    ('IA', 'Cedar Rapids'),
    ('CA', 'Visalia'),
    ('FL', 'Coral Springs'),
    ('CT', 'New Haven'),
    ('CT', 'Stamford'),
    ('CA', 'Thousand Oaks'),
    ('CA', 'Concord'),
    ('NJ', 'Elizabeth'),
    ('LA', 'Lafayette'),
    ('WA', 'Kent'),
    ('KS', 'Topeka'),
    ('CA', 'Simi Valley'),
    ('CA', 'Santa Clara'),
    ('GA', 'Athens-Clarke County'),
    ('CT', 'Hartford'),
    ('CA', 'Victorville'),
    ('TX', 'Abilene'),
    ('OK', 'Norman'),
    ('CA', 'Vallejo'),
    ('CA', 'Berkeley'),
    ('TX', 'Round Rock'),
    ('MI', 'Ann Arbor'),
    ('ND', 'Fargo'),
    ('MO', 'Columbia'),
    ('PA', 'Allentown'),
    ('IN', 'Evansville'),
    ('TX', 'Beaumont'),
    ('TX', 'Odessa'),
    ('NC', 'Wilmington'),
    ('CO', 'Arvada'),
    ('MO', 'Independence'),
    ('UT', 'Provo'),
    ('MI', 'Lansing'),
    ('CA', 'El Monte'),
    ('IL', 'Springfield'),
    ('CA', 'Fairfield'),
    ('FL', 'Clearwater'),
    ('IL', 'Peoria'),
    ('MN', 'Rochester'),
    ('CA', 'Carlsbad'),
    ('CO', 'Westminster'),
    ('UT', 'West Jordan'),
    ('TX', 'Pearland'),
    ('TX', 'Richardson'),
    ('CA', 'Downey'),
    ('FL', 'Miami Gardens'),
    ('CA', 'Temecula'),
    ('CA', 'Costa Mesa'),
    ('TX', 'College Station'),
    ('IL', 'Elgin'),
    ('CA', 'Murrieta'),
    ('OR', 'Gresham'),
    ('NC', 'High Point'),
    ('CA', 'Antioch'),
    ('CA', 'Inglewood'),
    ('MA', 'Cambridge'),
    ('MA', 'Lowell'),
    ('NH', 'Manchester'),
    ('MT', 'Billings'),
    ('CO', 'Pueblo'),
    ('FL', 'Palm Bay'),
    ('CO', 'Centennial'),
    ('CA', 'Richmond'),
    ('CA', 'San Buenaventura (Ventura)'),
    ('FL', 'Pompano Beach'),
    ('SC', 'North Charleston'),
    ('WA', 'Everett'),
    ('CT', 'Waterbury'),
    ('FL', 'West Palm Beach'),
    ('CO', 'Boulder'),
    ('CA', 'West Covina'),
    ('OK', 'Broken Arrow'),
    ('CA', 'Clovis'),
    ('CA', 'Daly City'),
    ('FL', 'Lakeland'),
    ('CA', 'Santa Maria'),
    ('CA', 'Norwalk'),
    ('GA', 'Sandy Springs'),
    ('OR', 'Hillsboro'),
    ('WI', 'Green Bay'),
    ('TX', 'Tyler'),
    ('TX', 'Wichita Falls'),
    ('TX', 'Lewisville'),
    ('CA', 'Burbank'),
    ('CO', 'Greeley'),
    ('CA', 'San Mateo'),
    ('CA', 'El Cajon'),
    ('CA', 'Jurupa Valley'),
    ('CA', 'Rialto'),
    ('IA', 'Davenport'),
    ('TX', 'League City'),
    ('FL', 'Davie'),
    ('NM', 'Las Cruces'),
    ('IN', 'South Bend'),
    ('CA', 'Vista'),
    ('WA', 'Renton'),
    ('TX', 'San Angelo'),
    ('VA', 'Roanoke'),
    ('WI', 'Kenosha'),
    ('AL', 'Tuscaloosa'),
    ('TX', 'Allen'),
    ('PA', 'Erie'),
    ('NV', 'Sparks'),
    ('CA', 'Vacaville'),
    ('NY', 'Albany'),
    ('OR', 'Beaverton'),
    ('CA', 'Compton'),
    ('UT', 'Orem'),
    ('MI', 'Flint'),
    ('WA', 'Federal Way'),
    ('CA', 'Mission Viejo'),
    ('WA', 'Spokane Valley'),
    ('FL', 'Boca Raton'),
    ('MO', 'Lee''s Summit'),
    ('NM', 'Rio Rancho'),
    ('UT', 'Sandy'),
    ('MA', 'Brockton'),
    ('ID', 'Meridian'),
    ('CA', 'South Gate'),
    ('KS', 'Lawrence'),
    ('CA', 'San Marcos'),
    ('VA', 'Portsmouth'),
    ('MA', 'New Bedford'),
    ('AZ', 'Yuma'),
    ('OK', 'Lawton'),
    ('GA', 'Roswell'),
    ('MI', 'Dearborn'),
    ('MI', 'Livonia'),
    ('WA', 'Yakima'),
    ('FL', 'Sunrise'),
    ('CA', 'Hesperia'),
    ('MA', 'Quincy'),
    ('CO', 'Longmont'),
    ('CA', 'Carson'),
    ('FL', 'Plantation'),
    ('MA', 'Lynn'),
    ('CA', 'Santa Monica'),
    ('CA', 'Santa Barbara'),
    ('FL', 'Miami Beach'),
    ('CA', 'Redding'),
    ('CA', 'Chico'),
    ('CA', 'Westminster'),
    ('NC', 'Greenville'),
    ('ID', 'Nampa'),
    ('OK', 'Edmond'),
    ('OR', 'Bend'),
    ('IN', 'Carmel'),
    ('CA', 'San Leandro'),
    ('IN', 'Fishers'),
    ('FL', 'Deltona'),
    ('NC', 'Concord'),
    ('CA', 'Tracy'),
    ('VA', 'Suffolk'),
    ('NC', 'Asheville'),
    ('CA', 'Livermore'),
    ('MA', 'Newton'),
    ('MA', 'Fall River'),
    ('CA', 'Menifee'),
    ('CA', 'Indio'),
    ('CT', 'Norwalk'),
    ('IL', 'Waukegan'),
    ('TX', 'Sugar Land'),
    ('AR', 'Fort Smith'),
    ('CA', 'Hawthorne'),
    ('NH', 'Nashua'),
    ('CA', 'Chino'),
    ('WA', 'Kirkland'),
    ('TX', 'Edinburg'),
    ('PA', 'Reading'),
    ('WA', 'Bellingham'),
    ('CA', 'Citrus Heights'),
    ('CA', 'Whittier'),
    ('UT', 'Ogden'),
    ('CA', 'Newport Beach'),
    ('IL', 'Champaign'),
    ('MN', 'Duluth'),
    ('MO', 'O''Fallon'),
    ('NJ', 'Clifton'),
    ('CA', 'Alhambra'),
    ('MN', 'Bloomington'),
    ('FL', 'Palm Coast'),
    ('CT', 'Danbury'),
    ('AL', 'Hoover'),
    ('CA', 'Redwood City'),
    ('IN', 'Bloomington'),
    ('CA', 'Hemet'),
    ('SC', 'Mount Pleasant'),
    ('NJ', 'Trenton'),
    ('NM', 'Santa Fe'),
    ('GA', 'Johns Creek'),
    ('AR', 'Fayetteville'),
    ('MI', 'Troy'),
    ('TX', 'Mission'),
    ('TX', 'Bryan'),
    ('CA', 'Lake Forest'),
    ('CA', 'Buena Park'),
    ('FL', 'Largo'),
    ('IL', 'Cicero'),
    ('AZ', 'Avondale'),
    ('IA', 'Sioux City'),
    ('CA', 'Merced'),
    ('UT', 'St. George'),
    ('TX', 'Conroe'),
    ('CA', 'Pleasanton'),
    ('TX', 'Longview'),
    ('OR', 'Medford'),
    ('RI', 'Warwick'),
    ('MI', 'Westland'),
    ('MA', 'Somerville'),
    ('FL', 'Melbourne'),
    ('CA', 'Lakewood'),
    ('MI', 'Farmington Hills'),
    ('RI', 'Cranston'),
    ('WA', 'Kennewick'),
    ('CA', 'Mountain View'),
    ('CA', 'Napa'),
    ('CA', 'Tustin'),
    ('VA', 'Lynchburg'),
    ('MA', 'Lawrence'),
    ('FL', 'Deerfield Beach'),
    ('MN', 'Brooklyn Park'),
    ('NY', 'New Rochelle'),
    ('OH', 'Parma'),
    ('CA', 'Alameda'),
    ('CA', 'Chino Hills'),
    ('AR', 'Springdale'),
    ('IL', 'Bloomington'),
    ('CA', 'Bellflower'),
    ('WI', 'Racine'),
    ('CA', 'Milpitas'),
    ('WA', 'Auburn'),
    ('TX', 'Pharr'),
    ('PA', 'Scranton'),
    ('CA', 'Folsom'),
    ('AZ', 'Goodyear'),
    ('MN', 'Plymouth'),
    ('FL', 'Fort Myers'),
    ('IN', 'Hammond'),
    ('CA', 'Manteca'),
    ('CO', 'Loveland'),
    ('LA', 'Lake Charles'),
    ('CA', 'Upland'),
    ('MO', 'St. Joseph'),
    ('CA', 'Baldwin Park'),
    ('IN', 'Gary'),
    ('CA', 'Perris'),
    ('TX', 'Baytown'),
    ('MI', 'Kalamazoo'),
    ('UT', 'Layton'),
    ('CA', 'San Ramon'),
    ('FL', 'Boynton Beach'),
    ('MI', 'Wyoming'),
    ('NC', 'Gastonia'),
    ('IL', 'Arlington Heights'),
    ('CA', 'Union City'),
    ('PA', 'Bethlehem'),
    ('IL', 'Evanston'),
    ('AR', 'Jonesboro'),
    ('TN', 'Franklin'),
    ('TX', 'Missouri City'),
    ('IL', 'Bolingbrook'),
    ('IL', 'Schaumburg'),
    ('NJ', 'Camden'),
    ('IA', 'Iowa City'),
    ('GA', 'Warner Robins'),
    ('WI', 'Appleton'),
    ('SD', 'Rapid City'),
    ('TX', 'New Braunfels'),
    ('GA', 'Albany'),
    ('TX', 'Temple'),
    ('TX', 'Flower Mound'),
    ('MI', 'Rochester Hills'),
    ('MI', 'Southfield'),
    ('SC', 'Rock Hill'),
    ('CA', 'Turlock'),
    ('IL', 'Decatur'),
    ('CT', 'New Britain'),
    ('CA', 'Apple Valley'),
    ('ND', 'Bismarck'),
    ('MT', 'Missoula'),
    ('WI', 'Waukesha'),
    ('CA', 'Rancho Cordova'),
    ('MS', 'Gulfport'),
    ('IN', 'Lafayette'),
    ('FL', 'Lauderhill'),
    ('AZ', 'Flagstaff'),
    ('DE', 'Wilmington'),
    ('RI', 'Pawtucket'),
    ('OH', 'Canton'),
    ('CA', 'Redlands'),
    ('CA', 'Lynwood'),
    ('CA', 'Pittsburg'),
    ('NJ', 'Passaic'),
    ('WA', 'Pasco'),
    ('MD', 'Frederick'),
    ('FL', 'Weston'),
    ('TX', 'North Richland Hills'),
    ('MN', 'Maple Grove'),
    ('FL', 'Kissimmee'),
    ('NJ', 'Union City'),
    ('MO', 'St. Charles'),
    ('CA', 'Walnut Creek'),
    ('UT', 'South Jordan'),
    ('IN', 'Muncie'),
    ('TX', 'Cedar Park'),
    ('MN', 'Woodbury'),
    ('IL', 'Palatine'),
    ('LA', 'Bossier City'),
    ('AL', 'Dothan'),
    ('NY', 'Mount Vernon'),
    ('WI', 'Eau Claire'),
    ('CA', 'Yorba Linda'),
    ('CA', 'Davis'),
    ('FL', 'Homestead'),
    ('IA', 'Waterloo'),
    ('CA', 'Redondo Beach'),
    ('NC', 'Jacksonville'),
    ('MD', 'Gaithersburg'),
    ('TX', 'Victoria'),
    ('MN', 'St. Cloud'),
    ('WA', 'Marysville'),
    ('SC', 'Greenville'),
    ('FL', 'Delray Beach'),
    ('CA', 'Camarillo'),
    ('TX', 'Georgetown'),
    ('LA', 'Kenner'),
    ('CA', 'Palo Alto'),
    ('TN', 'Jackson'),
    ('CA', 'South San Francisco'),
    ('MD', 'Rockville'),
    ('ME', 'Portland'),
    ('CA', 'Yuba City'),
    ('TN', 'Johnson City'),
    ('FL', 'Daytona Beach'),
    ('WI', 'Oshkosh'),
    ('CO', 'Broomfield'),
    ('MN', 'Eagan'),
    ('AR', 'North Little Rock'),
    ('NJ', 'Bayonne'),
    ('IA', 'Ames'),
    ('TX', 'Mansfield'),
    ('TX', 'Harlingen'),
    ('GA', 'Alpharetta'),
    ('CA', 'Laguna Niguel'),
    ('CA', 'San Clemente'),
    ('AR', 'Conway'),
    ('KY', 'Bowling Green'),
    ('FL', 'Tamarac'),
    ('KS', 'Shawnee'),
    ('AR', 'Rogers'),
    ('NY', 'Schenectady'),
    ('NJ', 'East Orange'),
    ('CA', 'Lodi'),
    ('AZ', 'Buckeye'),
    ('IA', 'West Des Moines'),
    ('CA', 'Santa Cruz'),
    ('CA', 'Madera'),
    ('OH', 'Youngstown'),
    ('FL', 'North Port'),
    ('IL', 'Skokie'),
    ('CA', 'Lake Elsinore'),
    ('WI', 'Janesville'),
    ('WY', 'Cheyenne'),
    ('MN', 'Eden Prairie'),
    ('FL', 'Wellington'),
    ('FL', 'Jupiter'),
    ('WA', 'Sammamish'),
    ('OH', 'Lorain'),
    ('CA', 'Pico Rivera'),
    ('CA', 'Montebello'),
    ('CA', 'Encinitas'),
    ('AL', 'Auburn'),
    ('MA', 'Waltham'),
    ('MN', 'Blaine'),
    ('MA', 'Haverhill'),
    ('CA', 'Rocklin'),
    ('CA', 'Tulare'),
    ('IA', 'Council Bluffs'),
    ('WA', 'Redmond'),
    ('MN', 'Coon Rapids'),
    ('FL', 'North Miami'),
    ('OH', 'Hamilton'),
    ('TX', 'Rowlett'),
    ('TX', 'San Marcos'),
    ('MN', 'Lakeville'),
    ('OR', 'Springfield'),
    ('CO', 'Grand Junction'),
    ('CA', 'La Habra'),
    ('OK', 'Moore'),
    ('MN', 'Burnsville'),
    ('MI', 'Taylor'),
    ('CA', 'Eastvale'),
    ('CA', 'National City'),
    ('UT', 'Lehi'),
    ('FL', 'Port Orange'),
    ('CA', 'Monterey Park'),
    ('GA', 'Marietta'),
    ('IN', 'Terre Haute'),
    ('MA', 'Malden'),
    ('WA', 'Lakewood'),
    ('NY', 'Utica'),
    ('CA', 'Cupertino'),
    ('CA', 'Brentwood'),
    ('CA', 'Petaluma'),
    ('NJ', 'Vineland'),
    ('UT', 'Taylorsville'),
    ('ID', 'Idaho Falls'),
    ('IN', 'Noblesville'),
    ('CT', 'Bristol'),
    ('WI', 'West Allis'),
    ('CA', 'Gardena'),
    ('CA', 'La Mesa'),
    ('MI', 'St. Clair Shores'),
    ('MI', 'Pontiac'),
    ('CT', 'Meriden'),
    ('CA', 'Dublin'),
    ('FL', 'Coconut Creek'),
    ('WY', 'Casper'),
    ('KY', 'Owensboro'),
    ('FL', 'Ocala'),
    ('NC', 'Chapel Hill'),
    ('TX', 'Pflugerville'),
    ('PA', 'Lancaster'),
    ('MI', 'Novi'),
    ('MT', 'Great Falls'),
    ('OH', 'Springfield'),
    ('CA', 'Woodland'),
    ('MI', 'Royal Oak'),
    ('CA', 'Porterville'),
    ('CA', 'San Rafael'),
    ('CA', 'Huntington Park'),
    ('IL', 'Orland Park'),
    ('TN', 'Bartlett'),
    ('FL', 'Sanford'),
    ('IA', 'Dubuque'),
    ('CA', 'Arcadia'),
    ('MD', 'Bowie'),
    ('NY', 'White Plains'),
    ('IL', 'Des Plaines'),
    ('FL', 'Doral'),
    ('FL', 'Margate'),
    ('CA', 'Santee'),
    ('IN', 'Kokomo'),
    ('CO', 'Castle Rock'),
    ('ND', 'Grand Forks'),
    ('OK', 'Midwest City'),
    ('MO', 'St. Peters'),
    ('MA', 'Medford'),
    ('OR', 'Corvallis'),
    ('TN', 'Hendersonville'),
    ('NJ', 'New Brunswick'),
    ('MA', 'Taunton'),
    ('IL', 'Tinley Park'),
    ('CA', 'Diamond Bar'),
    ('GA', 'Smyrna'),
    ('FL', 'Sarasota'),
    ('IN', 'Greenwood'),
    ('CA', 'Fountain Valley'),
    ('GA', 'Valdosta'),
    ('IL', 'Oak Lawn'),
    ('CA', 'Novato'),
    ('MA', 'Chicopee'),
    ('MA', 'Weymouth Town'),
    ('MI', 'Dearborn Heights'),
    ('IL', 'Berwyn'),
    ('FL', 'Bradenton'),
    ('NY', 'Hempstead'),
    ('CA', 'Hanford'),
    ('NC', 'Rocky Mount'),
    ('TX', 'Port Arthur'),
    ('WA', 'Shoreline'),
    ('OH', 'Kettering'),
    ('IN', 'Anderson'),
    ('AL', 'Decatur'),
    ('CA', 'Gilroy'),
    ('WA', 'Richland'),
    ('KS', 'Manhattan'),
    ('CA', 'Highland'),
    ('CA', 'Paramount'),
    ('CO', 'Commerce City'),
    ('NC', 'Huntersville'),
    ('TX', 'Euless'),
    ('ID', 'Pocatello'),
    ('NV', 'Carson City'),
    ('CA', 'Colton'),
    ('AZ', 'Casa Grande'),
    ('CT', 'West Haven'),
    ('CA', 'Rosemead'),
    ('MO', 'Blue Springs'),
    ('NJ', 'Hoboken'),
    ('IL', 'Normal'),
    ('FL', 'Bonita Springs'),
    ('IL', 'Mount Prospect'),
    ('CA', 'Cathedral City'),
    ('CA', 'Watsonville'),
    ('FL', 'Pensacola'),
    ('FL', 'Palm Beach Gardens'),
    ('AZ', 'Lake Havasu City'),
    ('OH', 'Elyria'),
    ('NE', 'Bellevue'),
    ('IL', 'Wheaton'),
    ('NJ', 'West New York'),
    ('CA', 'Yucaipa'),
    ('MS', 'Southaven'),
    ('OR', 'Albany'),
    ('MA', 'Revere'),
    ('ID', 'Caldwell'),
    ('VA', 'Harrisonburg'),
    ('CA', 'West Sacramento'),
    ('KS', 'Lenexa'),
    ('TN', 'Kingsport'),
    ('NC', 'Burlington'),
    ('CA', 'Delano'),
    ('VA', 'Leesburg'),
    ('TX', 'DeSoto'),
    ('CT', 'Milford'),
    ('NJ', 'Perth Amboy'),
    ('MA', 'Peabody'),
    ('GA', 'Brookhaven'),
    ('MN', 'Minnetonka'),
    ('CA', 'Palm Desert'),
    ('CA', 'Placentia'),
    ('IN', 'Elkhart'),
    ('MO', 'Joplin'),
    ('FL', 'Pinellas Park'),
    ('WI', 'La Crosse'),
    ('TX', 'Grapevine'),
    ('MN', 'Apple Valley'),
    ('OR', 'Tigard'),
    ('CA', 'Glendora'),
    ('MO', 'Florissant'),
    ('IL', 'Oak Park'),
    ('IL', 'Hoffman Estates'),
    ('MI', 'Kentwood'),
    ('MI', 'Battle Creek'),
    ('NE', 'Grand Island'),
    ('CA', 'Aliso Viejo'),
    ('MN', 'Edina'),
    ('WA', 'Olympia'),
    ('CO', 'Parker'),
    ('OK', 'Enid'),
    ('WA', 'Burien'),
    ('FL', 'Coral Gables'),
    ('UT', 'Logan'),
    ('NJ', 'Plainfield'),
    ('CA', 'Cerritos'),
    ('TX', 'Galveston'),
    ('ID', 'Coeur d''Alene'),
    ('OH', 'Lakewood'),
    ('CA', 'Poway'),
    ('MA', 'Methuen'),
    ('NY', 'Troy'),
    ('CA', 'Azusa'),
    ('NC', 'Wilson'),
    ('TX', 'Bedford'),
    ('OK', 'Stillwater'),
    ('IL', 'Downers Grove'),
    ('FL', 'Apopka'),
    ('SC', 'Summerville'),
    ('LA', 'Monroe'),
    ('UT', 'Murray'),
    ('CA', 'La Mirada'),
    ('OH', 'Cuyahoga Falls'),
    ('TN', 'Collierville'),
    ('WV', 'Charleston'),
    ('OH', 'Newark'),
    ('MI', 'Saginaw'),
    ('CA', 'Rancho Santa Margarita'),
    ('CA', 'Cypress'),
    ('PA', 'Harrisburg'),
    ('GA', 'Dunwoody'),
    ('MI', 'East Lansing'),
    ('OH', 'Middletown'),
    ('MN', 'St. Louis Park'),
    ('ND', 'Minot'),
    ('WI', 'Sheboygan'),
    ('IN', 'Mishawaka'),
    ('NY', 'Niagara Falls'),
    ('TN', 'Smyrna'),
    ('CA', 'Covina'),
    ('MI', 'Portage'),
    ('TX', 'Cedar Hill'),
    ('CA', 'Ceres'),
    ('TX', 'Texas City'),
    ('ID', 'Twin Falls'),
    ('NM', 'Roswell'),
    ('WV', 'Huntington'),
    ('AL', 'Madison'),
    ('WI', 'Wauwatosa'),
    ('IN', 'Lawrence'),
    ('NC', 'Kannapolis'),
    ('LA', 'Alexandria'),
    ('FL', 'St. Cloud'),
    ('TX', 'Wylie'),
    ('CA', 'Palm Springs'),
    ('WA', 'Lacey'),
    ('MO', 'Chesterfield'),
    ('MI', 'Roseville'),
    ('CA', 'San Luis Obispo'),
    ('IL', 'Glenview'),
    ('CA', 'San Jacinto'),
    ('OH', 'Euclid'),
    ('NC', 'Apex'),
    ('RI', 'East Providence'),
    ('KS', 'Salina'),
    ('UT', 'Draper'),
    ('IN', 'Jeffersonville'),
    ('AR', 'Bentonville'),
    ('CA', 'Lincoln'),
    ('MS', 'Hattiesburg'),
    ('VA', 'Charlottesville'),
    ('AZ', 'Maricopa'),
    ('IN', 'Columbus'),
    ('OH', 'Mentor'),
    ('OH', 'Mansfield'),
    ('TX', 'Keller'),
    ('CT', 'Middletown'),
    ('IL', 'Elmhurst'),
    ('OH', 'Beavercreek'),
    ('MA', 'Everett'),
    ('CO', 'Littleton'),
    ('FL', 'Titusville'),
    ('MS', 'Biloxi'),
    ('IN', 'West Lafayette'),
    ('CA', 'Newark'),
    ('NY', 'Binghamton'),
    ('OH', 'Dublin'),
    ('CA', 'Beaumont'),
    ('FL', 'Fort Pierce'),
    ('MT', 'Bozeman'),
    ('VA', 'Blacksburg'),
    ('TX', 'Burleson'),
    ('CA', 'Coachella'),
    ('NJ', 'Sayreville'),
    ('FL', 'Ocoee'),
    ('NJ', 'Hackensack'),
    ('FL', 'Cutler Bay'),
    ('OH', 'Cleveland Heights'),
    ('OH', 'Strongsville'),
    ('CA', 'Danville'),
    ('PA', 'Altoona'),
    ('WA', 'Bothell'),
    ('MA', 'Attleboro'),
    ('TX', 'Haltom City'),
    ('FL', 'Oakland Park'),
    ('TN', 'Cleveland'),
    ('MA', 'Barnstable Town'),
    ('CA', 'El Centro'),
    ('CA', 'Morgan Hill'),
    ('FL', 'North Miami Beach'),
    ('PA', 'York'),
    ('AR', 'Pine Bluff'),
    ('IL', 'Lombard'),
    ('AZ', 'Oro Valley'),
    ('CA', 'Lompoc'),
    ('FL', 'North Lauderdale'),
    ('TX', 'Rockwall'),
    ('FL', 'Altamonte Springs'),
    ('AZ', 'Marana'),
    ('NY', 'Freeport'),
    ('AZ', 'Sierra Vista'),
    ('IL', 'DeKalb'),
    ('AZ', 'Prescott Valley'),
    ('MA', 'Salem'),
    ('IA', 'Urbandale'),
    ('MO', 'Jefferson City'),
    ('CA', 'San Bruno'),
    ('WI', 'Fond du Lac'),
    ('IL', 'Plainfield'),
    ('NH', 'Concord'),
    ('MA', 'Pittsfield'),
    ('UT', 'Riverton'),
    ('CA', 'Bell Gardens'),
    ('GA', 'Peachtree Corners'),
    ('TX', 'Leander'),
    ('CA', 'Rohnert Park'),
    ('OH', 'Fairfield'),
    ('TN', 'Brentwood'),
    ('AZ', 'Prescott'),
    ('TX', 'Little Elm'),
    ('MN', 'Moorhead'),
    ('CA', 'Brea'),
    ('NJ', 'Linden'),
    ('CA', 'Rancho Palos Verdes'),
    ('TX', 'The Colony'),
    ('VT', 'Burlington'),
    ('IL', 'Moline'),
    ('FL', 'Ormond Beach'),
    ('NJ', 'Kearny'),
    ('MI', 'Midland'),
    ('SC', 'Goose Creek'),
    ('IL', 'Urbana'),
    ('PA', 'State College'),
    ('FL', 'Winter Garden'),
    ('IL', 'Belleville'),
    ('VA', 'Danville'),
    ('WA', 'Edmonds'),
    ('MN', 'Mankato'),
    ('MA', 'Leominster'),
    ('NM', 'Farmington'),
    ('TX', 'Sherman'),
    ('MA', 'Westfield'),
    ('VA', 'Manassas'),
    ('OH', 'Findlay'),
    ('RI', 'Woonsocket'),
    ('IA', 'Cedar Falls'),
    ('MA', 'Beverly'),
    ('TX', 'Coppell'),
    ('IL', 'Buffalo Grove'),
    ('CT', 'Shelton'),
    ('KS', 'Hutchinson'),
    ('TX', 'Huntsville'),
    ('IL', 'Bartlett'),
    ('CA', 'La Quinta'),
    ('CA', 'Campbell'),
    ('KY', 'Covington'),
    ('SC', 'Sumter'),
    ('WA', 'Bremerton'),
    ('WA', 'Puyallup'),
    ('CA', 'Oakley'),
    ('MN', 'Shakopee'),
    ('PA', 'Wilkes-Barre'),
    ('NC', 'Hickory'),
    ('IL', 'Quincy'),
    ('SC', 'Hilton Head Island'),
    ('MD', 'Hagerstown'),
    ('MA', 'Fitchburg'),
    ('CA', 'San Gabriel'),
    ('CA', 'La Puente'),
    ('IL', 'Crystal Lake'),
    ('MA', 'Holyoke'),
    ('CA', 'Calexico'),
    ('IL', 'Streamwood'),
    ('MN', 'Maplewood'),
    ('NC', 'Wake Forest'),
    ('IL', 'Carol Stream'),
    ('TX', 'Weslaco'),
    ('FL', 'Greenacres'),
    ('GA', 'Gainesville'),
    ('AZ', 'Bullhead City'),
    ('AL', 'Florence'),
    ('AZ', 'Apache Junction'),
    ('OH', 'Warren'),
    ('OH', 'Lancaster'),
    ('WI', 'New Berlin'),
    ('OH', 'Grove City'),
    ('IL', 'Romeoville'),
    ('MA', 'Chelsea'),
    ('MA', 'Marlborough'),
    ('MO', 'Cape Girardeau'),
    ('CT', 'Norwich'),
    ('FL', 'Hallandale Beach'),
    ('TX', 'Duncanville'),
    ('TX', 'Schertz'),
    ('MA', 'Woburn'),
    ('MD', 'Annapolis'),
    ('TX', 'Friendswood'),
    ('NM', 'Clovis'),
    ('CA', 'Culver City'),
    ('FL', 'Oviedo'),
    ('TX', 'Hurst'),
    ('MS', 'Meridian'),
    ('CA', 'Pacifica'),
    ('TN', 'Germantown'),
    ('OH', 'Westerville'),
    ('CO', 'Northglenn'),
    ('OR', 'Keizer'),
    ('FL', 'Winter Haven'),
    ('OR', 'Lake Oswego'),
    ('CA', 'Montclair'),
    ('WI', 'Wausau'),
    ('TX', 'Lancaster'),
    ('UT', 'Spanish Fork'),
    ('MS', 'Tupelo'),
    ('UT', 'Pleasant Grove'),
    ('NJ', 'Atlantic City'),
    ('CA', 'Stanton'),
    ('OH', 'Delaware'),
    ('IA', 'Marion'),
    ('GA', 'Milton'),
    ('OK', 'Muskogee'),
    ('MI', 'Muskegon'),
    ('SC', 'Florence'),
    ('IL', 'Wheeling'),
    ('CO', 'Brighton'),
    ('IL', 'Carpentersville'),
    ('CA', 'Martinez'),
    ('NC', 'Indian Trail'),
    ('IL', 'Rock Island'),
    ('UT', 'Roy'),
    ('FL', 'Plant City');