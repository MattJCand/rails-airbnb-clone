# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Space.destroy_all

spaces_attributes = [
  {
    name:         "Jazz Club",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    description:  "Jazz-club incontournable",
    size:         150,
    price_by_day: 100,
    wc: 2,
    nails: true,
    drill: false,
    plugs: 5,
    windows: 5,
    photo_url: "http://cdn.pcwallart.com/images/cozy-coffee-shop-interior-design-wallpaper-2.jpg"
  },
  {
    name:         "Palais de Tokyo",
    address:      "13 avenue du president wilson",
    description:  "Le palais de Tokyo est un bâtiment consacré à l'art moderne et contemporain, situé au 13, avenue du Président-Wilson dans le 16ᵉ arrondissement de Paris.",
    size:         150,
    price_by_day: 100,
    wc: 2,
    nails: true,
    drill: false,
    plugs: 5,
    windows: 5,
    photo_url: "https://cdn.wallpaper.com/main/styles/wp_large/s3/legacy/gallery/17055731/04-COS-Palais-de-Tokyo.jpg"
  },
  {
    name:         "Yoyo Tokyo",
    address:      "50 avenue du president wilson",
    description:  "Espace contemporain modulable sous le Palais de Tokyo dédié aux événements culturels, concerts et clubbing.",
    size:         150,
    price_by_day: 100,
    wc: 2,
    nails: true,
    drill: false,
    plugs: 5,
    windows: 5,
    photo_url: "https://www.residentadvisor.net/images/clubs/lg/fr-yoyo.jpg"
  },
 {
    name:         "le point ephemere",
    address:      "200 Quai de Valmy, 75010 Paris",
    description:  "Centre d'art en bord de canal avec espace d'expositions, salle de concert polyvalente & studios de répétition.",
    size:         150,
    price_by_day: 100,
    wc: 2,
    nails: true,
    drill: false,
    plugs: 5,
    windows: 5,
    photo_url: "https://media.timeout.com/images/100741195/image.jpg"
  }
]
Space.create!(spaces_attributes)
puts 'Finished!'

