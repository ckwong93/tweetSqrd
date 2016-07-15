get '/tweets' do
	@tweet = Tweet.all
	erb :'/tweet/index'
end


get '/tweets/new' do
	erb :'/tweet/new'
end


post '/tweets' do
end


get '/tweets/:id' do
end

get '/tweets/:id/edit' do
	erb :'/tweet/edit'
end

put '/tweets/:id' do
end

delete '/tweets/:id' do
end
