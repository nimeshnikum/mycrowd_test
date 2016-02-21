class User < ActiveRecord::Base
	has_many :tests

	scope :all_except, lambda {|user| where("id != #{user.id}")}

	def name
		[first_name, last_name].map(&:to_s).join(' ')
	end
end
