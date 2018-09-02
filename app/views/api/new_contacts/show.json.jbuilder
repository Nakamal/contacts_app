json.id @person.id
json.first_name @person.first_name
json.last_name @person.last_name
json.full_name @person.full_name
json.email @person.email
json.phone_number @person.phone_number

json.formatted do
  json.friendly_updated_at @person.friendly_updated_at   
  json.phone_number @person.japan_phone_number 
end