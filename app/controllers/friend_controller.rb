get 'users/:id/friends' do

  @user = User.find(params[:id])
  @friends = Friend.find_by(followee_id: @user.id) #define instance variable for view

  erb :'friends/index' #show all friends view (index)

end

get 'users/:id/followers' do

  @user = User.find(params[:id])
  @followees = Friend.find_by(follower_id: @user.id) #define instance variable for view

  erb :'followers/index' #show all friends view (index)

end
