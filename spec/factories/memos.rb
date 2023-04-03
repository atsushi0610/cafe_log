FactoryBot.define do
  factory :memo do
    title {Faker::Lorem.sentence}
    date {Faker::Date.between(from: 2.days.ago, to: Date.today)}
    impression {Faker::Lorem.sentence}
    association :user 

    after(:build) do |memo|
      memo.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
