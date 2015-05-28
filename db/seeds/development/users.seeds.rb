80.times do
  User.create([
                  {username: Faker::Name.name, email: Faker::Internet.email}
               ])
end