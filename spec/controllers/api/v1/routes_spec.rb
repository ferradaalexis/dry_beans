require 'rails_helper'
require 'spec_helper.rb'
describe Api::V1::RoutesController do  
  context "Show" do
    before :each do
      @route = Route.new(id: 1, day: Date.today)
    end
    
    it "should return found response" do
      request.accept = "application/json"
      get :show , params: { id: 1 } , format: :json
      expect(response.status).to eq(200)
    end

    it "should return not found response" do
      request.accept = "application/json"
      get :show , params: { id: 2 } , format: :json
      expect(response.status).to eq(404)
    end
  end
end