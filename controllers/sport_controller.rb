class SportController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # Setting the root as the parent directory of the current directory
  set :root, File.join(File.dirname(__FILE__), '..')

  # Sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # INDEX
  get '/sports' do
    @title = "PeopleCo"
    @sports = Sport.all

    erb :'sports/index'
  end
  # NEW
  get '/sports/new' do
    erb :'sports/new'
  end
  # SHOW
  get '/sports/:id' do
    id = params[:id].to_i
    @id = Sport.find id

    erb :'sports/show'
  end
  # CREATE
  post '/sports' do

    sport = Sport.new

    sport.sport_name = params[:sport_name]
    sport.invented = params[:invented]
    sport.team_size = params[:team_size]

    sport.save

    redirect '/sports'

  end
  # UPDATE
  put '/sports/:id' do

    id = params[:id].to_i

    sport = Sport.find id

    sport.sport_name = params[:sport_name]
    sport.invented = params[:invented]
    sport.team_size = params[:team_size]

    sport.save

    redirect '/sports'

  end
  # DELETE
  delete '/sports/:id' do
    id = params[:id].to_i
    Sport.destroy id
    redirect '/sports'
  end
  # EDIT
  get '/sports/:id/edit' do
    id = params[:id].to_i
    @sport = Sport.find id

    erb :'sports/edit'
  end

end
