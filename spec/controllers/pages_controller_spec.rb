require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  current_user = User.first_or_create!(email: "testuser2@gmail.com", password: "123456", password_confirmation: "123456", username: "testuser", firstname: "test", lastname: "user")
  
  describe 'routing' do
  it 'should redirect to article_path when theres a current user' do
      user = current_user
      user.save
      redirect_to articles_path
      expect respond_to be_successful
  end
end
  

end
