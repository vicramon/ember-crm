namespace :db do
  task populate: :environment do

    Lead.destroy_all

    def random_status
      ['new', 'in progress', 'closed', 'bad'].sample
    end

    30.times do
      Lead.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        phone: Faker::PhoneNumber.phone_number,
        status: random_status,
        notes: Faker::Lorem.paragraph(2)
      )
    end

  end
end
