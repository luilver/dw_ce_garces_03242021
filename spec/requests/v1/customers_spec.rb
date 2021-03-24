require 'rails_helper'
require 'ffaker' 

RSpec.describe 'Customers API V1' do
  let(:base_url) { '/v1/customers' }

  let(:params) do
    {
      email: FFaker::Internet.email,
      name: FFaker::Name.name
    }
  end

  describe 'POST /customers' do
    before { post base_url, params: params }

    it 'return status code 201' do
      expect(response).to have_http_status(:success)
    end
  end
end
