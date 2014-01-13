namespace :db do
  desc 'Populate database with sample data'
  task populate: :environment do
    User.create!(name: 'Mike Shutt',
                 email: 'mjshutt@gmail.com',
                 password: 'foobar',
                 password_confirmation: 'foobar')

    admin = User.create!(name: "Example Admin User",
                         email: "admin@example.com",
                         password: "foobar",
                         password_confirmation: "foobar")
    admin.toggle!(:admin)

    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end