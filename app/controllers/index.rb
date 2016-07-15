get '/index' do
  erb :login
end

get '/register' do
  erb :register
end

post '/register' do
if params[:password1] == params[:password2]
  @user = User.new(name: params[:username], email: params[:email], password: params[:password1])
      if @user.save
        redirect '/'
      else
        erb :register
      end
  end

end

