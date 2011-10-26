require 'rubygems'
require 'sinatra'

# Sinatra has some good documentation
# 
# @see http://www.sinatrarb.com/
# @see http://www.sinatrarb.com/intro.html
# 
# Give it a read and see what fun things you can put together. Don't feel like
# you need to go over everything.
# 

get '/' do
  "<h1>Hello World</h1>
	<h2>this is a test</h2>"
end

get '/hi/:food/:city' do
  "yo dog, i heard you like #{params[:food]} in #{params[:city]}"
end

get '/admin' do
  %{
    <h1>Admin Page</h1>
    <h2>This is the stuff of admins</h2>
  }
end 

get '/forms' do
  erb :forms
end
   
post '/forms' do
  "Name: #{params[:some_name]}<br/>
  Email: #{params[:email]}<br/>
  Address: #{params[:address]}<br/>
  City: #{params[:city]}<br/>
  "
end
