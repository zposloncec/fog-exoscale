require "fog/core"
require "fog/json"
require "fog/xml"
require "fog/exoscale/core"
require "fog/exoscale/version"
require "fog/exoscale/compute"

module Fog
  module Exoscale
    extend Fog::Provider
    service(:compute, "Compute")
  end
end
