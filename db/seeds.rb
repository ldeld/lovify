# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bar.create!(name: "Cabana Café",
  address: "30, rue de l'Annonciade Lyon 69001",
  description: "Cabana Café « Latino Social Club » vous accueille du mardi au samedi, de 20H à 4H du matin pour une ambiance 100 pourcent fiesta latina : ambiance « caliente » et conviviale garantie !",
  photo: "https://www.petitpaume.com/sites/default/files/styles/slider_large/public/visuel/cabana-2016_3-bar_decoupe.jpg?itok=01FmraZ_" )
Bar.create!(name: "La Pasarela",
  address: "107, qu. P. Scize Lyon 69005",
  description:"Chez nous, vous y serez comme à la maison, accueillis et servis avec le sourire, dans la bonne humeur et la passion de l’univers latino ! A la Pasarela, le mojito est roi, les planches de tapas une tradition, l’Electro Latino, le Reggaeton, la Salsa et la Bachata de rigueur. Notre spécialité : le Rhum de marque Havana Club bien sûr !!!",
  photo: "http://www.lesbarres.com/media/image/slideshow/f35ff80d97af6ad50b51e790567b631f72ff3477.jpg" )
Bar.create!(name: "Calle Latino",
  address: "3, crs de Verdun Gensoul Lyon 69002",
  description: "Niché à côté de Perrache, ce petit bar à tapas en surprendra plus d'un. Les lumières colorées, les souvenirs de Cuba et les innombrables photos confèrent au lieu un charme sans pareil. Bons ingrédients et proportions respectées : ici, on cultive la recette du Mojito réussi.",
  photo: "https://lyon.citycrunch.fr/wp-content/uploads/2015/05/Calle-Latino.jpg" )

Bar.create!(name: "Jazz Club Lyon St Georges",
  address: "4, rue St-Georges Lyon 69005",
  description: "Ici, on apprécie le blues mais aussi le blanc, que l’on retrouve servi dans les verres et bien coiffé sur les têtes. Au son des guitares et de la batterie, des sourires se dessinent sur le visage de mes voisins habitués. Épaules et mains dansent en rythme dans l'air chaud et heureux de la pièce. Ce Jazz Club a réussi son pari, fédérer autour du jazz ses amis.",
  photo: "https://www.petitpaume.com/sites/default/files/styles/slider_large/public/visuel/caveau-jazzclub-st-georges_-_copie.jpg?itok=OFdLMaxK" )
Bar.create!(name: "La Clef de Voûte",
  address: "1, pl. Chardonnet Lyon 69001",
  description: "De l'avis de la plupart des amateurs croisés sur notre chemin, la Clef de Voûte est THE place to be pour entendre les meilleurs artistes de jazz grâce au directeur Benny Golson qui s'investit pour donner vie en musique à cette magnifique bâtisse du XVIIIème siècle.",
  photo: "https://www.petitpaume.com/sites/default/files/styles/slider_large/public/visuel/jazz-club-la-clef-de-voute.jpg?itok=yYpdDDY8" )
Bar.create!(name: "Windy Lounge",
  address: "5, qu. A. Riboud Lyon 69002",
  description: "Une fois rentré, on imagine parfaitement ce qu'était le Chicago des années 30. Lumières rougeâtres tamisées, musique jazzy et cocktails à foison.",
  photo: "https://www.petitpaume.com/sites/default/files/styles/slider_large/public/visuel/photo_1_7.jpg?itok=_QFR6O7t" )

Bar.create!(name: "The Sham'rock",
  address: "15, rue Ste-Catherine Lyon 69001",
  description: "The Shamrock, n.p. : 1) Nom autochtone du pub lyonnais, symbole de la rue Sainte-Catherine. 2) Temple de la bière à prix cassé, de la musique rock des années 2000 et des soirées beuverie entre amis.",
  photo: "http://www.aperorestodisco.com/DOCS/photos/2603/DSC05597.JPG" )
Bar.create!(name: "Bar Berliner",
  address: "20 rue Saint-Georges 69005 Lyon",
  description: "Un mélange des genres entre vintage rock 70′ et vieilles pierres qui me plait. Le sous-sol du bar propose une autre déco Rockn’roll avec guitare au mur sous la belle voûte. Platines, super sono, tabourets, si vous voulez écouter du bon son c’est par là que cela se passe.",
  photo: "https://www.petitpaume.com/sites/default/files/styles/slider_large/public/visuel/12800177_442429242623158_246030880108263596_n_0.jpg?itok=o-tCOF-K")
Bar.create!(name: "Trokson",
  address: "110, montée de la gde Côte Lyon 69001",
  description: "Le Trokson c’est un peu le repère du bon son et des mauvais garçons. Accoudé au comptoir ou sur la grande terrasse pour les beaux jours, vous pourrez siroter une blonde pendant que vos oreilles siffleront au rythme du concert d’hard rock.",
  photo: "https://static.wixstatic.com/media/f94789_4fc20e34f53d477aa17650c2b2af865a.jpg/v1/fill/w_772,h_515,al_c,q_90,usm_0.66_1.00_0.01/f94789_4fc20e34f53d477aa17650c2b2af865a.webp")
Bar.create!(name: "Rock'n'Eat",
  address: "4, rue O. Mey Lyon 69005",
  description: "Nos voisins de table aux cheveux longs ne s'embarrassent pas de couverts, on les imite. Entre les rires et la musique, c'est à qui sera le plus fort. Bref répit le temps d'une lampée de bière, heureusement qu'elle est là celle-là !",
  photo: "https://i.ytimg.com/vi/QJe2wW85_3M/hqdefault.jpg")
