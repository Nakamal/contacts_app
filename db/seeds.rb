150.times do 
  first_name = Faker::Name.first_name
  middle_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  bio_line = ""

  10.times do
    bio_line += " " + Faker::FamousLastWords.last_words
  end

  contact = Contact.new(
                        first_name: first_name,
                        middle_name: middle_name,
                        last_name: last_name,
                        email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
                        phone_number: Faker::PhoneNumber.phone_number,
                        bio: bio_line
                        )
  contact.save
end