require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) {User.new(first_name: 'Cyle', last_name: 'Gul', email: 'thisisat@got.com', password: 'password', password_confirmation: 'password' )} 
  describe 'Validations' do
    it 'should be a valid with all attributes' do
      user.valid?
      expect(user).to be_valid
    end
    it 'should be a matching password' do
      user.password = "match"
      user.password_confirmation = "no match"
      user.valid?
      expect(user).to_not be_valid
    end
    it 'should have a valid email' do
      user.email = nil
      user.valid?
      expect(user).to_not be_valid
    end
    it 'should have a valid first_name' do
      user.first_name = nil
      user.valid?
      expect(user).to_not be_valid
    end
    it 'should have a valid last_name' do
      user.last_name = nil
      user.valid?
      expect(user).to_not be_valid
    end
    it 'validates password length' do
      user.valid?
      user.password = "12"
      user.password_confirmation = "12"
      expect(user).to_not be_valid
    end
    it 'validates password length' do
      user.valid?
      user.password = "123"
      user.password_confirmation = "123"
      expect(user).to be_valid
    end
  end
  
  describe 'authenticate_with_credentials' do
    it 'Authenticate with a valid email and password' do
      user.save
      expect(User.authenticate_with_credentials('thisisat@got.com','password')).to be_truthy
    end 
  end 
  describe 'authenticate_with_credentials' do
    it 'is case sensitive authentication' do
      user.save
      expect(User.authenticate_with_credentials('ThisIsAt@GOT.com','password')).to be_truthy
    end
  end
end