require 'sinatra'

get '/' do
  name = %w[Ben Jenny Cleo Daria].sample
  "Hello #{name}"
end

get '/:name' do
  "Hello #{params['name']}!"
end
