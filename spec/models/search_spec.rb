require 'rails_helper'
RSpec.describe Search, model: :Search do
  describe 'Tests for Search model validation' do
    @user = User.create(name: 'Test', email: 'termus96@gmail.com', password: '123456')
    
    it 'search should be present and not blank' do
      subject.searching_for = nil
      expect(subject).to_not be_valid
      subject.searching_for = ''
      expect(subject).to_not be_valid
    end
  end
end
