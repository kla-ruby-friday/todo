require 'sinatra'
require_relative './models/task.rb'

get '/hello' do
    'Hello World'
end

get '/' do
    erb :index
end

get '/tasks' do
    @tasks = []
    10.times do |index|
        @tasks << Task.new("Task #{ index }", "Where for task #{ index }", index)
    end
    @tasks
    erb :index
end
