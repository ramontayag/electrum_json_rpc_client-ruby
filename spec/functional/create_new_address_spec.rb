require 'spec_helper'

RSpec.describe "create_new_address" do

  it "creates a new address", vcr: {record: :once} do
    client = ElectrumRpcJsonClient.new(CONFIG)
    response = client.create_new_address

    expect(response).to be_present
    expect(response.length).to eq 34

    expect(client.create_new_address).to_not eq(response)
  end

end
