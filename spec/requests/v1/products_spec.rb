require 'rails_helper'
require 'ffaker'

RSpec.describe 'Products API V1' do
  let(:base_url) { '/v1/products/' }

  let(:params) do
    {
      sku: "#{FFaker::Lorem.word[0...3]}#{Random.rand 1000}", 
      name: FFaker::Name.name,
      description: FFaker::Lorem.paragraph
    }
  end

  let!(:product) { FactoryBot.create(:product) }

  describe 'GET /products' do
    before { get base_url }

    it 'return status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end
