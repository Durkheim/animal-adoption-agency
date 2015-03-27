get '/' do # "/login"
  erb :index
end

post '/' do # "/login"
  if User.authenticate(params[:email], params[:password]) == nil
    redirect "/"
  else
    @user = User.authenticate(params[:email], params[:password])
    session[:user_id] = @user.id
    erb :choice # redirect '/'
  end
end

get '/users/new' do
  erb :"users/new"
end

post '/users' do
  @user = User.create(params[:user])
  session[:user_id] = @user.id
  erb :choice
end

get '/state' do
  @user = User.find_by(id: session[:user_id])
  @state = State.all
  erb :"state/show"
end

get '/state/:state_id' do
  @user = User.find_by(id: session[:user_id])
  @state_id = params[:state_id]
  @state = State.find_by(id: @state_id)
  erb :"species/show"
end

get '/state/:state_id/species/:species_id/breeds' do
  @user = User.find(session[:user_id])
  @species = Species.find(params[:species_id])
  @state = State.find(params[:state_id])
  @breeds = Breed.where(species_id: params[:species_id])
  erb :"breeds/show"
end


get '/animals/:id' do
  @user = User.find_by(id: session[:user_id])
  @animal_id = params[:id]
  @animal = Animal.find_by(id: params[:id])
  erb :"animals/show"
end

post '/animals/:id/adopt' do
  puts params
  @user = User.find_by(id: session[:user_id])
  @animal_id = params[:id]
  @animal = Animal.find_by(id: params[:id])
  @animal.update_attributes(adopted: true)
  puts @animal
  redirect "/animals/#{@animal.id}"
end

get '/adoption_form' do
  @animal = Animal.create(params[:animal])
  erb :"animals/new"
end




