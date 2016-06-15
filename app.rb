require 'sinatra'
require 'sinatra/activerecord'

current_dir = Dir.pwd

Dir["#{current_dir}/config/initializers/*.rb"].each { |f| require f }
Dir["#{current_dir}/models/*.rb"].each { |file| require file }

set :port, 5000

get '/articles' do
  @articles = Article.all
end
