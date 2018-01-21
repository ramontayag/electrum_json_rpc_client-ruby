require "dry-initializer"
require "rpcjson"
require "electrum_rpc_json_client/version"

module ElectrumRpcJsonClient

  def self.new(opts)
    Client.new(opts)
  end
end

require "electrum_rpc_json_client/client"
