
class BookmarkManager < Sinatra::Base
  get '/' do

  end

  run! if app_file == $PROGRAM_NAME
end
