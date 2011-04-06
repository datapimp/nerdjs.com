require 'rubygems'
require 'sinatra'
require 'haml'
require 'rdiscount' # for markdown templates
require 'shotgun' # for easy development

set :markdown, :layout_engine => :haml, :layout => :post

get '/' do
  haml :index
end

get '/posts/:title' do
  markdown :post 
end

def app
  Sinatra::Application
end
