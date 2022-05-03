require 'rails_helper'

RSpec.describe 'Customers', type: :request do
  describe 'GET "/customers/"' do
    before(:example) { get '/customers/' }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template('index')
    end

    it 'page contains text' do
      expect(response.body).to include('Customers')
    end
  end

  describe 'GET "/customers/new"' do
    before(:example) { get '/customers/new' }
    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'new' template" do
      expect(response).to render_template('new')
    end

    it 'page contains text' do
      expect(response.body).to include('New Customer')
    end
  end
end
