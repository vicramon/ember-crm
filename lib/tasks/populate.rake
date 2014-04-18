namespace :db do
  task populate: :environment do

    Lead.delete_all

    def random_status
      ['new', 'in progress', 'closed', 'bad'].sample
    end

    20.times do
      Lead.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.phone_number,
        status: random_status,
        notes: Faker::Lorem.paragraph(2)
      )
    end

  end
end
