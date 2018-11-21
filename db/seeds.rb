# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

restaurants_attr = [
  {
    name: 'Mamma Romma',
    address: 'Rue oberkampf',
    category: 'italian'
  },
  {
    name: 'Ober Mamma',
    address: 'Boulevard Lenoir',
    category: 'italian'
  },
  {
    name: 'Double Dragon',
    address: 'République',
    category: 'chinese'
  },
  {
    name: 'Au pied de fouet',
    address: 'rue de sèvres babylone',
    category: 'french'
  },
  {
    name: 'Pré catelan',
    address: 'bois de boulogne',
    category: 'french'
  }
]

Restaurant.create(restaurants_attr)
