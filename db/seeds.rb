# Admin.create!(
# email: 'testtest@gmail.com',
# password: 'test1234',
# )

# 20.times do |n|
#   User.create!(
#     last_name: Faker::Name.unique.last_name,
#     first_name: Faker::Name.unique.first_name,
#     last_name_kana: "テスト",
#     first_name_kana: "テスト",
#     email: Faker::Internet.unique.email,
#     telephone_number: Faker::PhoneNumber.unique.cell_phone,
#     password: "3150test",
#     password_confirmation: "3150test"
#   )
# end

10.times do |n|
Task.create!(
user_id:2,
genre_id:2,
title: Faker::Lorem.sentence,
body: Faker::Lorem.sentences,
due_date: Faker::Date.between(from: '2022-08-18', to: '2022-08-30'),
)
end

10.times do |n|
Task.create!(
user_id:4,
genre_id:3,
title: Faker::Lorem.sentence,
body: Faker::Lorem.sentences,
due_date: Faker::Date.between(from: '2022-08-18', to: '2022-08-30'),
)
end
10.times do |n|
Task.create!(
user_id:2,
genre_id:4,
title: Faker::Lorem.sentence,
body: Faker::Lorem.sentences,
due_date: Faker::Date.between(from: '2022-08-18', to: '2022-08-30'),
)
end

20.times do |n|
Task.create!(
user_id:5,
genre_id:2,
title: Faker::Lorem.sentence,
body: Faker::Lorem.sentences,
due_date: Faker::Date.between(from: '2022-08-18', to: '2022-08-30'),
)
end