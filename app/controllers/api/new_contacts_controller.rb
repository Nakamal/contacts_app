class Api::NewContactsController < ApplicationController
  def index
    @person = Person.first
    render "one_contact.json.jbuilder"
  end

  def create
    @people = Person.all
    render "many_contacts.json.jbuilder"
  end

  def show

  end

  def update

  end

  def destroy
    
  end
end
