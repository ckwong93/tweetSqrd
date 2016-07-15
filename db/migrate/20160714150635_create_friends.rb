class CreateFriends < ActiveRecord::Migration
	def change
		create_table :friends do |t|
			t.integer :follower_id, null: false
			t.integer :followee_id, null: false
		end
	end
end
