get '/index' do
  erb :login
end

get '/register' do
  erb :register
end

# post '/register' do
#   redirect
# if params[:password1] == params[:password2]
  # User.create()
# end

