namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example User",
                         email: "example@railstutorial.org",
                         password: "foobar",
                         password_confirmation: "foobar")
    admin.toggle!(:admin)

    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
      
      users = User.all(limit: 6)
        50.times do
          content = Faker::Lorem.sentence(5)
          users.each { |user| user.microposts.create!(content: content) }
        end
      users = User.all(limit: 3)
        4.times do
         name = Faker::Lorem.sentence(5)
        users.first { |user| user.topics.create!(name: name) }
        end
      end
    end

