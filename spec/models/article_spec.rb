require 'rails_helper'
RSpec.describe Article, model: :Article do
  @user = User.new(name: 'Test', email: 'termus96@gmail.com', password: '123456')
  @user.save
  subject { Article.new(user: @user, title: 'Test article', content: 'Test article content') }
  before { subject.save }

  describe 'Tests for Article model validation' do
    it 'title should be present and not blank' do
      subject.title = nil
      expect(subject).to_not be_valid
      subject.title = ''
      expect(subject).to_not be_valid
    end

    it 'title should not exceed 250 characters' do
      subject.title = 'test' * 100
      expect(subject).to_not be_valid
    end

    it 'content should be present and not blank' do
      subject.content = nil
      expect(subject).to_not be_valid
    end
  end

end
