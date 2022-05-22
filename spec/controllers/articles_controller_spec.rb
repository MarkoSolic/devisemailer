require 'rails_helper'


RSpec.describe ArticlesController, type: :feature do

  current_user = User.first_or_create!(email: "testuser2@gmail.com", password: "123456", password_confirmation: "123456", username: "testuser", firstname: "test", lastname: "user")
  
  let(:valid_attributes)do
    {
    'id' => '1',
    'title' => 'test-title',
    'body' => 'test-body',
    'user' => current_user
    }
  end

  describe "GET / index " do
    it 'renders a article' do
      article = Article.new(valid_attributes)
      article.user = current_user
      get articles_url
      
      expect respond_to be_successful
    end
  end
    
   describe 'GET /show' do
    it 'renders a successful response' do
      article = Article.new(valid_attributes)
      article.user = current_user
      get articles_url(article)
      expect respond_to be_successful
    end
  end
  
  describe 'GET /new' do
    it 'renders a successful response' do
      get new_article_url
      expect respond_to be_successful
    end
  end
  
  
  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Article' do
        expect do
          article = Article.new(valid_attributes)
          article.user = current_user
          post articles_url, params: { post: valid_attributes }
          assert_difference('Article.count', 1) do
        end
        end
      end

      it 'redirects to the created post' do
        post articles_url, params: { post: valid_attributes }
        expect respond_to be_successful
      end
    end
  end
  
  
 describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        {
          'id' => '1',
          'title' => 'Test',
          'body' => '12345',
          'user' => current_user
        }
      end

      it 'updates the requested post' do
        article= Article.new(valid_attributes)
        article.user = current_user
        patch article_url(article), params: { post: new_attributes }
        article.reload
      end

      it 'redirects to the article' do
        article = Article.new(valid_attributes)
        article.user = current_user
        patch article_url(article), params: { post: new_attributes }
        article.reload
        expect respond_to redirect_to(article_url(article))
      end
    end
  end
  
    describe 'DELETE /destroy' do
    it 'destroys the requested article' do
      article = Article.new(valid_attributes)
      article.user = current_user
      expect do
      assert_difference('Article.count', -1) do
      delete article_url(article.id)
    end
  end
    end

    it 'redirects to the articles list' do
      article = Article.new(valid_attributes)
      article.user = current_user
      delete article_url(article.id)
      expect respond_to redirect_to(articles_url)
    end
  end

end




