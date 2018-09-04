class Api::NewContactsController < ApplicationController
  def index
    @person = Person.all
    render "index.json.jbuilder"
  end

  def create
    @person = Person.new(
                          first_name: params[:first_name],
                          middle_name: params[:middle_name]
                          last_name: params[:last_name],
                          email: params[:email],
                          phone_numnber: params[:phone_numnber]
                          )
    @person.save
    render "show.json.jbuilder"
  end

  def show
    @person = Person.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @person = Person.find(params[:id])

    @person.first_name = params[:first_name] || @person.first_name
    @person.middle_name = params[:middle_name] || @person.middle_name
    @person.last_name = params[:last_name] || @person.last_name
    @person.email = params[:email] || @person.email
    @person.phone_numnber = params[:phone_numnber] || @person.phone_numnber

    @person.save
    render "show.json.jbuilder"
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    render json: {message: "Successfully Eliminated!"}
  end
end
