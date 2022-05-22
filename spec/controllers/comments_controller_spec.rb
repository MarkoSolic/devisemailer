require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

current_user = User.first_or_create!(email: "testuser2@gmail.com", password: "123456", password_confirmation: "123456", username: "testuser", firstname: "test", lastname: "user",id: 1)
current_article = Article.create!({ user_id: current_user.id,title: "test1",body: "body-test"})

  let(:valid_attributes)do
    {
    'id'=> 1,
    'body' => 'test-body',
    'user_id' => current_user.id,
    'article_id' => 1
    }
  end


describe 'CREATE comment' do
  it 'creates a comment' do
    expect do
      comment  = Comment.create!({ user_id: current_article.id , body: "this is my comment" , article_id: 1})
      comment.save
      post articles_url(article_id), params: { post: valid_attributes }
      assert_difference('Comment.count', 1) do
      end
  end
end
end

describe 'DELETE comment'do
  it 'delete succesfull'do
   article = current_article
  expect do
      assert_difference('Comment.count', -1) do
      delete article_url(article.id)
    end
  end
  end
end

end
