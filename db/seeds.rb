# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Clear existing homes
Home.destroy_all

# Create dummy homes with California addresses and images
homes_data = [
  {
    address: "1234 Sunset Boulevard",
    city: "Los Angeles",
    state: "CA",
    zip_code: "90028",
    price: 1250000.00,
    bedrooms: 3,
    bathrooms: 2.5,
    square_feet: 2400,
    description: "Beautiful modern home in the heart of Hollywood with stunning city views. Recently renovated with high-end finishes throughout.",
    image_url: "https://images.unsplash.com/photo-1564013799919-ab600027ffc6?w=800&h=600&fit=crop"
  },
  {
    address: "4567 Pacific Coast Highway",
    city: "Malibu",
    state: "CA",
    zip_code: "90265",
    price: 3500000.00,
    bedrooms: 4,
    bathrooms: 3.5,
    square_feet: 3200,
    description: "Stunning beachfront property with panoramic ocean views. Features a private beach access and infinity pool.",
    image_url: "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?w=800&h=600&fit=crop"
  },
  {
    address: "7890 Lombard Street",
    city: "San Francisco",
    state: "CA",
    zip_code: "94133",
    price: 2100000.00,
    bedrooms: 2,
    bathrooms: 2,
    square_feet: 1800,
    description: "Charming Victorian home in the famous Russian Hill neighborhood. Walking distance to Fisherman's Wharf and North Beach.",
    image_url: "https://images.unsplash.com/photo-1484154218962-a197022b5858?w=800&h=600&fit=crop"
  },
  {
    address: "3210 Beverly Hills Drive",
    city: "Beverly Hills",
    state: "CA",
    zip_code: "90210",
    price: 4500000.00,
    bedrooms: 5,
    bathrooms: 4.5,
    square_feet: 4500,
    description: "Luxury estate in the prestigious Beverly Hills area. Features a tennis court, wine cellar, and smart home technology.",
    image_url: "https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?w=800&h=600&fit=crop"
  },
  {
    address: "5678 Silicon Valley Boulevard",
    city: "Palo Alto",
    state: "CA",
    zip_code: "94301",
    price: 2800000.00,
    bedrooms: 4,
    bathrooms: 3,
    square_feet: 2800,
    description: "Modern tech executive home in the heart of Silicon Valley. Close to Stanford University and major tech companies.",
    image_url: "https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?w=800&h=600&fit=crop"
  },
  {
    address: "9012 Napa Valley Road",
    city: "Napa",
    state: "CA",
    zip_code: "94558",
    price: 1800000.00,
    bedrooms: 3,
    bathrooms: 2,
    square_feet: 2200,
    description: "Charming vineyard home surrounded by rolling hills and grapevines. Perfect for wine enthusiasts and nature lovers.",
    image_url: "https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?w=800&h=600&fit=crop"
  },
  {
    address: "3456 La Jolla Shores Drive",
    city: "La Jolla",
    state: "CA",
    zip_code: "92037",
    price: 3200000.00,
    bedrooms: 4,
    bathrooms: 3.5,
    square_feet: 3100,
    description: "Coastal luxury home with breathtaking ocean views. Features a private deck and easy beach access.",
    image_url: "https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?w=800&h=600&fit=crop"
  },
  {
    address: "7890 Big Sur Highway",
    city: "Big Sur",
    state: "CA",
    zip_code: "93920",
    price: 2200000.00,
    bedrooms: 3,
    bathrooms: 2.5,
    square_feet: 2600,
    description: "Secluded mountain retreat with panoramic views of the Pacific Ocean. Perfect for those seeking peace and tranquility.",
    image_url: "https://images.unsplash.com/photo-1600566752355-35792bedcfea?w=800&h=600&fit=crop"
  }
]

# Create homes
homes_data.each do |home_attrs|
  Home.create!(home_attrs)
end

puts "Created #{Home.count} homes with California addresses and images!"
