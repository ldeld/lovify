# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#Destroys all bars before creating new ones...
Bar.destroy_all

# Bars Pop etc.
Bar.create!(name: "Hopstore", description: "Bar avec un grand choix de bières, grande terrasse et des super planches. Les frites sont aussi excellentes !", address: "27 Rue de la Martinière, 69001 Lyon", photo: "https://scontent-cdg2-1.xx.fbcdn.net/v/t31.0-8/19142931_841876329323291_2748008674881556594_o.jpg?oh=4faeeebda7780985914511e6addc15f0&oe=5AD180EB")
Bar.create!(name: "Brooklyn Bar", description: "Il y a un choix colossal de cocktails en tout genre. Leurs noms sont marrants, comme le Zombie ou le Maï Thaï, et nous mettent sous de bons auspices pour la soirée.", address: "4 Rue de la Monnaie, 69002 Lyon", photo: "https://www.petitpaume.com/sites/default/files/styles/slider_large/public/visuel/71721_167786716564850_5023048_n.jpg?itok=3sZZAwKK")
Bar.create!(name: "Ninkasi", description: "Ce bar avec terrasse propose des burgers, une bonne variété de bières de brasserie et un blind test musical.", address: "2 Place Antonin Jutard, 69003 Lyon", photo: "https://media-cdn.tripadvisor.com/media/photo-s/0a/dd/05/3e/ninkasi-gerland.jpg")

#Bars Electro etc.
Bar.create!(name: "Le Sucre", description: "Niché sur le toit de la Sucrière dans le 2ème arrondissement, quartier Confluence, le Sucre est l'endroit le plus hype du moment ou l'on va pour écouter de bons sons, souvent électros.", address: "50 Quai Rambaud, 69002 Lyon", photo: "https://www.heurebleue.fr/wp-content/files_dnk/cache/51ea07b54d18f4d04f2eeb157181acb1_le-sucre-lyon-rooftop.jpg")
Bar.create!(name: "Ayers Rock", description: "Cocktails, bières et danse sur fond de musiques actuelles dans un décor urbain avec graffitis sur les murs.", address: "4 Rue Désirée, 69001 Lyon", photo: "https://cdn.theculturetrip.com/wp-content/uploads/2015/12/ayers-rock-boat.jpg")
Bar.create!(name: "Livestation DIY", description: "Soirées électro dans ce bar-restaurant d'avant-garde avec tapas à préparer soi-même, bières et shooters.", address: "14 Rue de Bonald, 69007 Lyon", photo: "http://www.reserveunlieu.com/wp-content/uploads/2016/05/livestation-diy-02.png")

#Bars Rap etc.
Bar.create!(name: "La M.M.", description: "La Maison Mère, ou M.M., est le temple onirique de la hype attitude lyonnaise, la maison des jeunes et des encore-jeunes-dans-leur-tête.", address: "21 Place Gabriel Rambaud, 69001 Lyon", photo: "https://i.pinimg.com/736x/b2/3a/53/b23a537ad6f06f04c02191dcbe24224c--bar-lyon-lyon-france.jpg")
Bar.create!(name: "La Grooverie", description: "On y va pour l'ambiance, la multitude d'événements musicaux, la bonne humeur et les beats alliant funk et hip hop !", address: "9 Rue du Jardin des Plantes, 69001 Lyon", photo: "http://atelierlabricole.com/wp-content/uploads/2016/04/groov3.jpg")
Bar.create!(name: "Redwood", description: "Au cœur des cordeliers, le Redwood propose une ambiance d’inspiration londonienne et des cocktails élaborés.", address: "1 Rue Chavanne, 69001 Lyon", photo: "https://www.petitpaume.com/sites/default/files/styles/slider_large/public/visuel/redwood.jpg?itok=jc590K9W")


#Genres

#rap
Genre.create!(name: "hip hop")
Genre.create!(name: "rap")
Genre.create!(name: "r&b")

#pop
Genre.create!(name: "pop")

#rock
Genre.create!(name: "rock")
Genre.create!(name: "metal")
Genre.create!(name: "punk")

#electro
Genre.create!(name: "electro")
Genre.create!(name: "edm")
Genre.create!(name: "techo")

#latin
Genre.create!(name: "latin")
Genre.create!(name: "tropical")
Genre.create!(name: "raggaeton")

#jazz
Genre.create!(name: "jazz")
Genre.create!(name: "blues")
Genre.create!(name: "lounge")
Genre.create!(name: "soul")
Genre.create!(name: "folk")



#BarGenres = table intermediaire
BarGenre.create!(bar_id: 1, genre_id: 4)
BarGenre.create!(bar_id: 2, genre_id: 4)
BarGenre.create!(bar_id: 3, genre_id: 4)
BarGenre.create!(bar_id: 4, genre_id: 8)
BarGenre.create!(bar_id: 4, genre_id: 9)
BarGenre.create!(bar_id: 4, genre_id: 10)
BarGenre.create!(bar_id: 5, genre_id: 8)
BarGenre.create!(bar_id: 5, genre_id: 9)
BarGenre.create!(bar_id: 5, genre_id: 10)
BarGenre.create!(bar_id: 6, genre_id: 8)
BarGenre.create!(bar_id: 6, genre_id: 9)
BarGenre.create!(bar_id: 6, genre_id: 10)
BarGenre.create!(bar_id: 7, genre_id: 1)
BarGenre.create!(bar_id: 7, genre_id: 2)
BarGenre.create!(bar_id: 7, genre_id: 3)
BarGenre.create!(bar_id: 8, genre_id: 1)
BarGenre.create!(bar_id: 8, genre_id: 2)
BarGenre.create!(bar_id: 8, genre_id: 3)
BarGenre.create!(bar_id: 9, genre_id: 1)
BarGenre.create!(bar_id: 9, genre_id: 2)
BarGenre.create!(bar_id: 9, genre_id: 3)
