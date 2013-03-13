class AddRefreshTokenToUser < ActiveRecord::Migration
	def change
		change_table :users do |t|
			t.string :refresh_token
		end
	end
end