require 'rails_helper'

describe "get all comanies route", :type => :request do
  let!(:companies) { FactoryGirl.create_list(:company, 20)}

  before { get '/companies'}

  it 'returns all companies' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
