require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end
  # get '/' do
  #   name = %w[Ben Alex Agata Tom].sample
  #   "Hello #{name}"
  # end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
