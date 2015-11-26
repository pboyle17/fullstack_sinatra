require 'bundler'

Bundler.require

# get '/' do
#   {
#     :hello => 'Everything looks good!'
#   }.to_json

get '/' do
  erb :hello
end

get '/worlds' do
  erb :world
end

get '/other_stuff' do
  erb :other_stuff
end

#route for our form submission
get '/submit' do
  erb :submit
end
#route to post form

post '/submit_form' do

#log params to my console
#SECRET
#params is a hash (kvp) built in to sinatra
  p params
  return params.to_json

end
