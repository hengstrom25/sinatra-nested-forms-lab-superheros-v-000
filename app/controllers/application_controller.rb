require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

get '/' do
  erb :super_hero
end

post '/teams' do
  @team = Team.new(params[:team][:name], params[:team][:motto])
  members = params[:team]{:members]
  @heroes = members.collect do |data|
    Heroes.new(data[:name], data[:power], data[:bio])
    end
  erb :team
end

end
