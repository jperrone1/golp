require 'spec_helper'

describe "Things" do
  # describe "GET /things" do
  describe 'pages#helloworld' do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get things_path
      get '/'
      response.status.should be(200)
    end
  end
end
