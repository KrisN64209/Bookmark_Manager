require 'sinatra'

require 'sinatra/base'

class Bookmark_manager < Sinatra::Base

  get '/' do
    erb :index
  end

end