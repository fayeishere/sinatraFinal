require 'rubygems'
require 'sinatra'
require 'json'

set :public_folder, 'assets'

#user goes to /entries/id and index page is displayed
get '/entries/:id' do
  erb :"templates/index"
end

# when user pushes submit button redirect to 3
put '/entries/:id' do
  puts "hidden: " + params[:hidden]
  puts "_method: " + params[:_method]
  redirect "entries/3"
end
