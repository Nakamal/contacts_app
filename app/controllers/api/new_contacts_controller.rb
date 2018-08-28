class Api::NewContactsController < ApplicationController
  def one_contact_action
    @person = Person.first
    render "one_contact.json.jbuilder"
  end

  def many_contacts_action
    @people = Person.all
    render "many_contacts.json.jbuilder"
  end
end
