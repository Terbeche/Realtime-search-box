require 'rails_helper'

RSpec.feature 'Searches', type: :feature do
  include Devise::Test::IntegrationHelpers

  before(:each) do
    @user = User.create(name: 'hello', email: 'hello@gmail.com', password: '123456')
    @first_article = Article.create(title: 'First Article', content: 'This is the first article', user_id: @user.id)
    @second_article = Article.create(title: 'Second Article', content: 'This is the second article', user_id: @user.id)
    @third_article = Article.create(title: 'third Article', content: 'This is the third article', user_id: @user.id)
    @fourth_article = Article.create(title: 'fourth Article', content: 'This is the fourth article', user_id: @user.id)
    @fifth_article = Article.create(title: 'fifth Article', content: 'This is the fifth article', user_id: @user.id)

    sign_in @user
  end

  it 'Articles should have (Create new article) link' do
    visit articles_path

    expect(page).to have_content('New article')
  end

  it 'Create new article link Should go to the new article page' do
    visit articles_path
    first(:link, 'New article').click

    expect(page).to have_content('Add New Article')
  end

  it 'Should page have (SAVE) Button' do
    visit articles_path
    first(:link, 'New article').click

    expect(page).to have_content('Back')
  end
end
