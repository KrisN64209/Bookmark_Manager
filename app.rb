require 'sinatra'

require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/entered' do
    p params
    session[:bookmark] = params[:bookmark]
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmark = session[:bookmarks]
    erb :saved
  end

end