require 'rails_helper'
require 'ffaker' 

RSpec.describe 'Orders API V1' do
  let(:base_url) { '/v1/customers/' }

  let(:params) do
    {
      sku: "#{FFaker::Lorem.word[0...3]}#{Random.rand 1000}"
    }
  end

  let!(:customer) { FactoryBot.create(:customer) }

  describe 'GET customer/{id}/orders' do
    before { get "#{base_url}/#{customer.id}/orders" }

    it 'return status code 200' do
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST customer/{id}/orders' do
    before { post "#{base_url}/#{customer.id}/orders", params: params }

    it 'return status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end
