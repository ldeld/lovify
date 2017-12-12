# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

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


