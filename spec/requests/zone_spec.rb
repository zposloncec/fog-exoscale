require "minitest/autorun"
require "fog/exoscale"

describe Fog::Compute::Exoscale do
  before do
    @config = {
      :exoscale_api_key           => "GNo98yPx8tN_TJbGMVnv7pwM5iOeBbsv7iiM6L11FuXzYCSVSIJItOgPC4oTJkqwyLRp9jkADLVvRYkP2O3QLQ",
      :exoscale_secret_access_key => "QzCBEd9f4O8c32-8FNggQKfAk52v0txjq7OO6T7tL0aLlAt8tw0Cv_neoqLGMsg1A7cX6e3BdI2MjOLtQv6UPw"
    }
    
    @client = Fog::Compute::Exoscale.new(@config)
  end

  it "responds to #zones" do
    assert_respond_to @client, :zones
  end

  it "responds to #list_zones" do
    assert_respond_to @client, :list_zones
  end

  it "returns the zones collection " do
    @client.zones.wont_be_nil
  end

  it "returns a list of zones as a non-empty hash" do
    @client.list_zones.wont_be_nil
    @client.list_zones.must_be_kind_of Hash
    @client.list_zones["listzonesresponse"]["count"].must_be :>=, 1
  end
  
  it "lists a zone with format" do
    @client.list_zones["listzonesresponse"]["zone"].first["id"].must_be_kind_of String
    @client.list_zones["listzonesresponse"]["zone"].first["name"].must_be_kind_of String
    @client.list_zones["listzonesresponse"]["zone"].first["networktype"].must_be_kind_of String
    @client.list_zones["listzonesresponse"]["zone"].first["securitygroupsenabled"].must_be_kind_of TrueClass
    @client.list_zones["listzonesresponse"]["zone"].first["allocationstate"].must_be_kind_of String
    @client.list_zones["listzonesresponse"]["zone"].first["zonetoken"].must_be_kind_of String
    @client.list_zones["listzonesresponse"]["zone"].first["dhcpprovider"].must_be_kind_of String
    @client.list_zones["listzonesresponse"]["zone"].first["localstorageenabled"].must_be_kind_of TrueClass
    @client.list_zones["listzonesresponse"]["zone"].first["tags"].must_be_kind_of Array
  end
  
  it "returns a collection of zone with format" do
    @client.zones.first.id.must_be_kind_of String
    @client.zones.first.name.must_be_kind_of String
    @client.zones.first.network_type.must_be_kind_of String
    @client.zones.first.security_groups_enabled.must_be_kind_of TrueClass
    @client.zones.first.allocation_state.must_be_kind_of String
    @client.zones.first.zone_token.must_be_kind_of String
    @client.zones.first.dhcp_provider.must_be_kind_of String
  end
end
