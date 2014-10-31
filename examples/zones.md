## Zones

At the moment there's only 1 availability zone. 

Assuming you've configured your `~/.fog` file...

#### Collection

```
>> exo = Fog::Compute[:exoscale]
>> exo.zones
  <Fog::Compute::Exoscale::Zones
    [
      <Fog::Compute::Exoscale::Zone
        id="1128bd56-b4d9-4ac6-a7b9-c715b187ce11",
        name="ch-gva-2",
        domain_id=nil,
        domain_name=nil,
        network_type="Basic",
        security_groups_enabled=true,
        allocation_state="Enabled",
        zone_token="ccb0a60c-79c8-3230-ab8b-8bdbe8c45bb7",
        dhcp_provider="VirtualRouter"
      >
    ]
  >
```

#### List_zones

```
>> exo = Fog::Compute[:exoscale]
>> exo.list_zones
{"listzonesresponse"=>{"count"=>1, "zone"=>[{"id"=>"1128bd56-b4d9-4ac6-a7b9-c715b187ce11", "name"=>"ch-gva-2", "networktype"=>"Basic", "securitygroupsenabled"=>true, "allocationstate"=>"Enabled", "zonetoken"=>"ccb0a60c-79c8-3230-ab8b-8bdbe8c45bb7", "dhcpprovider"=>"VirtualRouter", "localstorageenabled"=>true, "tags"=>[]}]}}
```

