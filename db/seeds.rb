# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create!(
  brand: 'MAC', 
  name: 'Face & Body Foundation', 
  description: %{<p> A fluid foundation that provides low-to-medium buildable coverage and a flawless, natural satin-shine finish. Skin conditioning, water-resistant and long-wearing. </p>}, 
  image_url: 'f&b.jpg', 
  price: 27.00,
  category: 'Face'
)

Product.create!(
  brand: 'Shu Uemura', 
  name: 'Eyelash Curler', 
  description: %{<p> The iconic, best-selling and award-winning shu uemura eyelash curler featuring enhanced design and upgraded features for ultimate precision that delivers the perfect curl. Upgraded silicone pad in a new "mushroom" shape provides a protective, stay-put edge for improved safety and optimum curl. Upgraded patented hinge with precise engineering applies perfect amount of pressure on eyelashes. Curved angle suits all eye shapes. Calculated shape and size of frame length and ergonomic handles ensure stability and control. </p>}, 
  image_url: 'eyelashcurler.jpg', 
  price: 20.00,
  category: 'Eyes'
)

Product.create!(
  brand: 'Fresh', 
  name: 'Sugar Lip Treatment SPF 15', 
  description: %{<p> A hydrating treatment that nourishes, protects, and plumps the lips. </p>}, 
  image_url: 'freshrose.jpg', 
  price: 22.50,
  category: 'Lips'
)

Product.create!(
  brand: 'Benefit', 
  name: 'BADgal Lash Mascara', 
  description: %{<p> An unadulterated black mascara for dramatically full and voluminous lashes. </p>}, 
  image_url: 'badgal.jpg', 
  price: 10.00,
  category: 'Eyes'
)

Product.create!(
  brand: "Kiehl's", 
  name: 'Ultra Facial Cream', 
  description: %{<p> A 24-hour, light-textured daily hydrator leaves skin comfortable and visibly well-balanced. The unique combination of ingredients helps reduce moisture loss while drawing and absorbing moisture from the air. With continuous water replenishment throughout the day, skin is smooth and healthy-looking. </p>}, 
  image_url: 'ultrafacialcream.jpg', 
  price: 26.50,
  category: 'Skin'
)