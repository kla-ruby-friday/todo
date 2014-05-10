require 'sinatra'
require_relative './models/task.rb'
require "sinatra/activerecord"
require 'sinatra/flash'

enable :sessions
set :database, { adapter: "sqlite3", database: "todo.sqlite3" }

get '/tasks' do
  @tasks = Task.all
  erb :index
end

get '/new' do
  erb :new
end

post '/create' do
  @task = Task.create(name: params[:name], place: params[:place])
  if @task.save 
    flash[:notice] = "Task created successfully"
    redirect '/tasks'
  end
end
