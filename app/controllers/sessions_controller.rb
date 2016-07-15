get '/sessions/new' do
  p session
  erb :'/sessions/new'
end

post '/sessions/new' do

  #below works with properly formatted params in HTML form
  # @session = Session.new(params[:session]) #create new session

  # if @session.save #saves new session or returns false if unsuccessful
  #   redirect '/sessions' #redirect back to sessions index page
  # else
  #   erb :'sessions/new' # show new sessions view again(potentially displaying errors)
  # end

end


delete '/sessions/delete' do
  redirect '/'
end

