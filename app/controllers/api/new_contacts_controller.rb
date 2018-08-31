class Api::NewContactsController < ApplicationController
  def index
    @person = Person.find(params[:id])
    render "show.json.jbuilder"
  end

  def create
    @person = Person.find(params[:id])
    render "show.json.jbuilder"
  end

  def show
    @person = Person.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @person = Person.find(params[:id])

    @person.first_name = params[:first_name] || @person.first_name
    @person.last_name = params[:last_name] || @person.last_name
    @person.email = params[:email] || @person.email
    @person.phone_numnber = params[:phone_numnber] || @person.phone_numnber

    @person.save
    render "show.json.jbuilder"
  end

  def destroy
    @person = Person.find(params[:id])
    render "show.json.jbuilder"
  end
end
