require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    p ENV
    @bookmarks = Bookmark.all
    erb :'index'
  end

  post '/bookmarks' do
    url = params[:address]
    connection = PG.connect(dbname: bookmark_manager)
    connection.exec("INSERT INTO bookmarks (url) VALUES ('#{url}')")
  end

  run! if app_file == $0
end
