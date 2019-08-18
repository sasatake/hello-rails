require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do

    it "returns status code 200" do
      get "/users"
      expect(response).to have_http_status(200)
    end

    it "returns empty user list" do
      get "/users"
      expect(response.parsed_body['users'].size).to eq(0)
    end

  end
end
