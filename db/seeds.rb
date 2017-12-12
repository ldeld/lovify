#Destroys all bars before creating new ones...
Bar.destroy_all

# Bars Pop etc.
hopstore = Bar.create!(name: "Hopstore", description: "Bar avec un grand choix de bières, grande terrasse et des super planches. Les frites sont aussi excellentes !", address: "27 Rue de la Martinière, 69001 Lyon", photo: "https://scontent-cdg2-1.xx.fbcdn.net/v/t31.0-8/19142931_841876329323291_2748008674881556594_o.jpg?oh=4faeeebda7780985914511e6addc15f0&oe=5AD180EB")
brooklyn = Bar.create!(name: "Brooklyn Bar", description: "Il y a un choix colossal de cocktails en tout genre. Leurs noms sont marrants, comme le Zombie ou le Maï Thaï, et nous mettent sous de bons auspices pour la soirée.", address: "4 Rue de la Monnaie, 69002 Lyon", photo: "https://www.petitpaume.com/sites/default/files/styles/slider_large/public/visuel/71721_167786716564850_5023048_n.jpg?itok=3sZZAwKK")
ninkasi = Bar.create!(name: "Ninkasi", description: "Ce bar avec terrasse propose des burgers, une bonne variété de bières de brasserie et un blind test musical.", address: "2 Place Antonin Jutard, 69003 Lyon", photo: "https://media-cdn.tripadvisor.com/media/photo-s/0a/dd/05/3e/ninkasi-gerland.jpg")

#Bars Electro etc.
sucre = Bar.create!(name: "Le Sucre", description: "Niché sur le toit de la Sucrière dans le 2ème arrondissement, quartier Confluence, le Sucre est l'endroit le plus hype du moment ou l'on va pour écouter de bons sons, souvent électros.", address: "50 Quai Rambaud, 69002 Lyon", photo: "https://www.heurebleue.fr/wp-content/files_dnk/cache/51ea07b54d18f4d04f2eeb157181acb1_le-sucre-lyon-rooftop.jpg")
ayers = Bar.create!(name: "Ayers Rock", description: "Cocktails, bières et danse sur fond de musiques actuelles dans un décor urbain avec graffitis sur les murs.", address: "4 Rue Désirée, 69001 Lyon", photo: "https://cdn.theculturetrip.com/wp-content/uploads/2015/12/ayers-rock-boat.jpg")
livestation = Bar.create!(name: "Livestation DIY", description: "Soirées électro dans ce bar-restaurant d'avant-garde avec tapas à préparer soi-même, bières et shooters.", address: "14 Rue de Bonald, 69007 Lyon", photo: "http://www.reserveunlieu.com/wp-content/uploads/2016/05/livestation-diy-02.png")

#Bars Rap etc.
mm = Bar.create!(name: "La M.M.", description: "La Maison Mère, ou M.M., est le temple onirique de la hype attitude lyonnaise, la maison des jeunes et des encore-jeunes-dans-leur-tête.", address: "21 Place Gabriel Rambaud, 69001 Lyon", photo: "https://i.pinimg.com/736x/b2/3a/53/b23a537ad6f06f04c02191dcbe24224c--bar-lyon-lyon-france.jpg")
grooverie = Bar.create!(name: "La Grooverie", description: "On y va pour l'ambiance, la multitude d'événements musicaux, la bonne humeur et les beats alliant funk et hip hop !", address: "9 Rue du Jardin des Plantes, 69001 Lyon", photo: "http://atelierlabricole.com/wp-content/uploads/2016/04/groov3.jpg")
redwood = Bar.create!(name: "Redwood", description: "Au cœur des cordeliers, le Redwood propose une ambiance d’inspiration londonienne et des cocktails élaborés.", address: "1 Rue Chavanne, 69001 Lyon", photo: "https://www.petitpaume.com/sites/default/files/styles/slider_large/public/visuel/redwood.jpg?itok=jc590K9W")

#Genres
rap = [Genre.create!(name: "hip hop"), Genre.create!(name: "rap"), Genre.create!(name: "r&b"), Genre.create!(name: "underground hip hop"), Genre.create!(name: "trap music"), Genre.create!(name: "dwn trap"), Genre.create!(name: "southern hip hop")]
pop = [Genre.create!(name: "pop"), Genre.create!(name: "pop rap"), Genre.create!(name: "dance pop"), Genre.create!(name: "indie pop"), Genre.create!(name: "post-teen pop")]
rock = [Genre.create!(name: "rock"), Genre.create!(name: "hard rock"), Genre.create!(name: "alternative pop rock"), Genre.create!(name: "alternativerock"), Genre.create!(name: "modern rock"), Genre.create!(name: "indie rock"), Genre.create!(name: "album rock"), Genre.create!(name: "classic rock"), Genre.create!(name: "psychedelic rock"), Genre.create!(name: "metal"), Genre.create!(name: "punk")]
electro = [Genre.create!(name: "electro"), Genre.create!(name: "tropical house"), Genre.create!(name: "electro house"), Genre.create!(name: "big room"), Genre.create!(name: "edm"), Genre.create!(name: "techo")]
latin = [Genre.create!(name: "latin"), Genre.create!(name: "trap latino"), Genre.create!(name: "tropical"), Genre.create!(name: "latin pop"), Genre.create!(name: "latin hip hop"), Genre.create!(name: "raggaeton"), Genre.create!(name: "bachata"), Genre.create!(name: "reggaeton flow"), Genre.create!(name: "merengue"), Genre.create!(name: "pop reggaeton")]
jazz = [Genre.create!(name: "jazz"), Genre.create!(name: "vocal jazz"), Genre.create!(name: "blues"), Genre.create!(name: "lounge"), Genre.create!(name: "soul"), Genre.create!(name: "folk"), Genre.create!(name: "cool jazz"), Genre.create!(name: "jazz blues"), Genre.create!(name: "jazz fusion")]

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

pop.each do |genre|
  BarGenre.create!(bar: hopstore, genre: genre)
  BarGenre.create!(bar: brooklyn, genre: genre)
  BarGenre.create!(bar: ninkasi, genre: genre)
end

rap.each do |genre|
  BarGenre.create!(bar: mm, genre: genre)
  BarGenre.create!(bar: grooverie, genre: genre)
  BarGenre.create!(bar: redwood, genre: genre)
end

electro.each do |genre|
  BarGenre.create!(bar: sucre, genre: genre)
  BarGenre.create!(bar: ayers, genre: genre)
  BarGenre.create!(bar: livestation, genre: genre)
end
