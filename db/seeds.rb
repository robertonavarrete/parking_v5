# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

nombres = ['Jon','Sansa','Daenerys','Cersei','Jaime','Tyrion']
apellidos = ['Stark','Baratheon','Tully','Lannister','Targaryen','Tyrell']
marcas=['CHEVROLET','KIA','HYUNDAI','SUZUKI','NISSAN','TOYOTA','PEUGEOT','MAZDA','MITSUBISHI','VOLKSWAGEN','RENAULT','CHANGAN','JAC','MG','CITROEN','CHERY','SUBARU']
car_models=['SAIL','RIO','BALENO','MORNING','ACCENT','GRAND I-10','YARIS','ALTO','VERSA']
20.times do |i|
    User.create(
        email: "correo#{i+1}@gmail.com", 
        name: nombres[rand(0..5)], 
        last_name: apellidos[rand(0..5)],
        identification_type: false,
        identification_number: "#{rand(7...21).to_s}#{rand(100...999).to_s}#{rand(100...999).to_s}#{rand(0...9).to_s}",
        password: '123456')
end

26.times do |i|
    Car.create(
        brand:marcas[rand(0..16)],
        car_model:car_models[rand(0..8)],
        year:"#{rand(2010..2020)}".to_i,
        plate:"#{[*('A'..'Z')].sample(4).join}#{rand(10..98)}",
        user_id:"#{rand(1..20)}".to_i
    )
end
# columnas = ['A','B','C','D','E']

# columnas.each do |i|
#     16.times do |u|
#         Lot.create(lot_column: "#{u+1}", lot_row: "#{i}")
#         end
#     end
