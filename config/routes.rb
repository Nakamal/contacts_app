Rails.application.routes.draw do
  namespace :api do
    get "/newcontacts" => "newcontacts#index"
    post "/newcontacts" => "newcontacts#create"
    get "/newcontacts/:id" => "newcontacts#show"
    patch "/newcontacts/:id" => "newcontacts#update"
    delete "/newcontacts/:id" => "newcontacts#destroy"
  end
end
