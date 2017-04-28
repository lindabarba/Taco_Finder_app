# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tacospot.destroy_all

tacospots = Tacospot.create([
    {name: "Guerrilla Tacos", street_address: "582 Mateo St.", city: "Los Angeles", state: "CA", zip: 90012, hours: "Monday | 10am - 2pm", cash_only: "no", image_url: "http://i.imgur.com/nEdJVwM.jpg", user_id: 1},
    {name: "Leo's Taco Truck", street_address: "1515 S La Brea Ave", city: "Los Angeles", state: "CA", zip: 90019, hours: "9am - 3am", cash_only: "yes", image_url: "http://i.imgur.com/bpajfA2.jpg", user_id: 7},
    {name: "Guisados", street_address: "1261 W Sunset Blvd", city: "Los Angeles", state: "CA", zip: 90026, hours: "10am - 10pm", cash_only: "no", image_url: "http://i.imgur.com/lqCT1O1.jpg", user_id: 4},
    {name: "Kogi BBQ Roja", street_address: "Mississippi Ave and Sawtelle Blvd", city: "Los Angeles", state: "CA", zip: 90025, hours: "8pm - 1am", cash_only: "no", image_url: "http://i.imgur.com/p53CAE9.jpg", user_id: 1},
    {name: "La Estrella Tacos", street_address: "6103 N Figueroa St", city: "Los Angeles", state: "CA", zip: 90042, hours: "11am - 12am", cash_only: "no", image_url: "http://i.imgur.com/4u5bidE.jpg", user_id: 4},
    {name: "Tacos Cuernavaca", street_address: "5511E Whittier Blvd Eastmont Ave", city: "Los Angeles", state: "CA", zip: 90022, hours: "9am - 3am", cash_only: "yes", image_url: "http://i.imgur.com/xQgzC35.jpg", user_id: 1}
])
