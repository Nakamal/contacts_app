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







# person = Person.new(
#                     first_name: "Bob",
#                     last_name: "Roooooooarman",
#                     email: "carguy@yahoo.com",
#                     phone_number: "(303) 555-5555"
#                     )
# person.save
