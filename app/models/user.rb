class User < ActiveRecord::Base

	has_many :tweets
	has_many :users
	has_many :friends_as_followers, class_name: "Friend", foreign_key: :follower_id
	has_many :friends_as_followees, class_name: "Friend", foreign_key: :followee_id
	has_many :followers, through: :friends_as_followers
	has_many :followees, through: :friends_as_followees

	validates :name, presence: true
	validates :email, presence: true
	validates :password, presence: true

	include BCrypt

	def password
		@password ||= Password.new(password_hash)
	end

	def password=(new_password)
		@password = Password.create(new_password)
		self.password_hash = @password
	end

	 # def self.authenticate(username, password)
  #   user = User.find_by(name: username)
  #   if user && user.password == password
  #     user
  #   else
  #     nil
  #   end
  # end

end
