require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

get '/' do
  erb :super_hero
end

post '/teams' do
  @team = Team.new(params[:team][:name])
 
  params[:team][:hero].each do |details|
    Heroes.new(details)
  end
 
  @hero = Heroes.all
 
  erb :team
end

end
