require 'rails_helper'

describe "post a company route", :type => :request do


  before do
    post '/companies', params: { :name => 'test_name', :department => 'test_department', :product => 'test_product' }
  end

  it 'returns the company name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the companies department' do
    expect(JSON.parse(response.body)['department']).to eq('test_department')
  end

  it 'returns the companies best product' do
    expect(JSON.parse(response.body)['product']).to eq('test_product')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(201)
  end

  it "wont save if name is empty" do

    post '/companies', params: { :name => '', :department => 'some place to work', :product => 'some product' }

   expect(response).to have_http_status(422)
end
it "wont save if department is empty" do

  post '/companies', params: { :name => 'some name', :department => '', :product => 'some product' }

 expect(response).to have_http_status(422)
end
it "wont save if product is empty" do

  post '/companies', params: { :name => 'some name', :department => 'some place to work', :product => '' }

 expect(response).to have_http_status(422)
end

end
