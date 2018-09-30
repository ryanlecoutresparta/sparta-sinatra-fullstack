class PersonController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # Setting the root as the parent directory of the current directory
  set :root, File.join(File.dirname(__FILE__), '..')

  # Sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # INDEX
  get '/people' do
    @title = "PeopleCo"
    @people = Person.all

    erb :'people/index'
  end
  # NEW
  get '/people/new' do
    erb :'people/new'
  end
  # SHOW
  get '/people/:id' do
    id = params[:id].to_i
    @person = Person.find_with_sport id

    erb :'people/show'
  end
  # CREATE
  post '/people' do

    person = Person.new

    person.first_name = params[:first_name]
    person.last_name = params[:last_name]
    person.email = params[:email]
    person.gender = params[:gender]
    person.ip_address = params[:ip_address]
    person.sport_id = params[:sport_id]

    person.save

    redirect '/people'

  end
  # UPDATE
  put '/people/:id' do

    id = params[:id].to_i

    person = Person.find_with_sport id

    person.first_name = params[:first_name]
    person.last_name = params[:last_name]
    person.email = params[:email]
    person.gender = params[:gender]
    person.ip_address = params[:ip_address]
    person.sport_id = params[:sport_id]

    person.save

    redirect '/people'

  end
  # DELETE
  delete '/people/:id' do
    id = params[:id].to_i
    Person.destroy id
    redirect '/people'
  end
  # EDIT
  get '/people/:id/edit' do
    id = params[:id].to_i
    @person = Person.find_with_sport id

    erb :'people/edit'
  end

end
