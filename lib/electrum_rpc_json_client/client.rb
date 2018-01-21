module ElectrumRpcJsonClient
  class Client

    extend Dry::Initializer
    option :host

    def create_new_address
      rpc_client = RPC::JSON::Client.new(host, 2.0)
      rpc_client.createnewaddress
    end

  end
end
