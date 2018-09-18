Group.create!([
               {name: "Family"},   
               {name: "Business"},   
               {name: "Out of Town"},   
               {name: " Blacklisted"},   
               {name: "School"}
             ])

group_ids = Group.pluck(:id)

Contact.all.each do |contact|
  sampled_ids = group_ids.sample(rand(2..4))

  sampled_ids.each do |group_id|
    ContactGroup.create!(contact_id: contact.id, group_id: group_id)
  end
end



# 150.times do 
#   first_name = Faker::Name.first_name
#   middle_name = Faker::Name.first_name


#   last_name = Faker::Name.last_name
#   bio_line = ""

#   10.times do
#     bio_line += " " + Faker::FamousLastWords.last_words
#   end

#   contact = Contact.new(
#                         first_name: first_name,
#                         middle_name: middle_name,
#                         last_name: last_name,
#                         email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
#                         phone_number: Faker::PhoneNumber.phone_number,
#                         bio: bio_line
#                         )
#   contact.save
# end