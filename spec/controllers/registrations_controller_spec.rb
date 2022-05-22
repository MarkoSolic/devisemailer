require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do
  
  
  describe "user registration" do
    
    it 'user added successfully'  do
      
      user = User.create(email: "testuser2@gmail.com", password: "123456", password_confirmation: "123456", username: "testuser", firstname: "test", lastname: "user")
      
      expect(user.username).to eq 'testuser'
    end
  end
  

end
