# encoding: UTF-8

require "minitest/autorun"
require "fog/exoscale"

describe Fog::Exoscale do
  
  it "responds to #escape" do
    assert_respond_to Fog::Exoscale, :escape
  end
  
  it "escaped special characters" do
    assert_equal("%27St%C3%B6p%21%27%20said%20Fred_-%7E.", 
                 Fog::Exoscale.escape( "'Stöp!' said Fred_-~." ))
  end
  
  it "responds to #signed_params" do
    assert_respond_to Fog::Exoscale, :signed_params
  end
  
  it "escaped signs params" do
    assert_equal("V2CxRU4zQQtox1DZsH/66GDdzhg=", 
                 Fog::Exoscale.signed_params( "abcdefg",
                                              "account" => "Lorem Ipsum",
                                              "domainid" => 42,
                                              "q" => "keywords" ))
    assert_equal("V2CxRU4zQQtox1DZsH/66GDdzhg=", 
                 Fog::Exoscale.signed_params( "abcdefg",
                                              "account" => "Lorem Ipsum",
                                              "domainid" => "42",
                                              "q" => "keywords" ))
    assert_equal("5bsDirm5pPgVoreQ6vquKRN+4HI=", 
                 Fog::Exoscale.signed_params( "abcdefg",
                                              "account" => "Lorem Ipsum",
                                              "domainid" => 42,
                                              "q" => nil ))
    assert_equal("5bsDirm5pPgVoreQ6vquKRN+4HI=", 
                 Fog::Exoscale.signed_params( "abcdefg",
                                              "account" => "Lorem Ipsum",
                                              "domainid" => 42,
                                              "q" => "" ))
  end
end
