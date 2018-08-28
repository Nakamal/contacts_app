Rails.application.routes.draw do
  namespace :api do
    get "/one_person_url" => "newcontacts#one_contact_action"
    get "/many_contacts_url" => "newcontacts#many_contacts_action"
  end
end
