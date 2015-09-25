require 'sinatra'
require './lib/semester.rb'

set :public_folder, "public"

get '/' do
  erb :index
end

post '/semesters/' do
  erb :semesters, :locals => { :current => params['current'], :num => params['num'], :result => Semester.new.next_semesters(params['current'], params['num'])}
end

get '/about/' do
  erb :about
end

