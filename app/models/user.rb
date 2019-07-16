class User < ActiveRecord::Base
    has_secure_password

    validates :first_name, :last_name, :email, :password, :password_confirmation, presence: true

    validates_uniqueness_of :email

    validates :password, length: {minimum: 3} 

  def self.authenticate_with_credentials (email, password)
    user = User.find_by_email(email)
    if user && user.authenticate(password)
      user
    else 
      nil
    end
  end
end