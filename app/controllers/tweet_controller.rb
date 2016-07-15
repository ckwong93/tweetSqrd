#all Tweets
get '/tweets' do
	@tweet = Tweet.all
	erb :'/tweets/index'
end

#form to add new tweets
get '/tweets/new' do
	erb :'/tweets/new'
end


#create the new tweet
post '/tweets' do
  @tweet = Tweet.new(user_id: current_user.id, content: params[:tweet][:content])
  
  @error = @tweet.errors.full_messages

  if @tweet.save
    redirect "/"
  else
    @error = "Invalid information"
    erb :"/tweets/new"
  end
end

#find the tweet by id
get '/tweets/:id' do
  @wish = Tweet.find(params[:id])
  erb :'/tweets/show' 
end

#send the user to a form to edit their tweet
get '/tweets/:id/edit' do
	erb :'/tweets/edit'
end

#update the tweet
put '/tweets/:id' do
	@tweet = Tweet.find(params[:id])
	@tweet.update(params[:tweet])
	redirect '/tweets/show'
end

#delete the tweet by id
delete '/tweets/:id' do
  @tweet = Tweet.find(params[:id])
  @tweet.destroy
  redirect '/tweets/show' 
end


