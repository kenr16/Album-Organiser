require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
also_reload('views/**/*.erb')
require('./lib/cd')

get('/') do
  erb(:index)
end

get('/albums/new') do
  erb(:cd_form)
end

post('/success') do
  title = params.fetch('new_title')
  artist = params.fetch('new_artist')
  Cd.new(title, artist).save()
  @albums = Cd.all()
  redirect('/')
  erb(:success)
end

get('/title_list') do
  @albums = Cd.all()
  erb(:title_list)
end

get('/albums/:id') do
  @album = Cd.find(params.fetch('id').to_i())
  erb(:album)
end

get('/artist_list') do
  @albums = Cd.all()
  erb(:artist_list)
end
