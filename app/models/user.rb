class User < ActiveRecord::Base
  validates_uniqueness_of :username
  validates_confirmation_of :password, :on => :create
  validates_length_of :password, :within => 5..40
  # attr_accessible :username, :password
  # If a user matching the credentials is found, returns the User object.
  # If no matching user is found, returns nil.
  # @param [Object] user_info
  def self.authenticate(user_info)
    find_by_username_and_password(user_info[:username], user_info[:password])
  end

end
