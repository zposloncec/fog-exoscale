module Fog
  module Compute
    class Exoscale

      class Real
        # Lists affinity groups
        #
        # {CloudStack API Reference}[http://cloudstack.apache.org/docs/api/apidocs-4.4/root_admin/listAffinityGroups.html]
        def list_affinity_groups(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listAffinityGroups') 
          else
            options.merge!('command' => 'listAffinityGroups')
          end
          request(options)
        end
      end
 
      class Mock
        def list_affinity_groups(options={})
          affinity_groups = []
          if affinity_group_id = options['id']
            affinity_group = self.data[:affinity_groups][affinity_group_id]
            raise Fog::Compute::Exoscale::BadRequest unless affinity_group
            affinity_groups = [affinity_group]
          else
            affinity_groups = self.data[:affinity_groups].values
          end

          {
            "listaffinitygroupsresponse" =>
            {
              "count"         => affinity_groups.size,
              "affinitygroup" => affinity_groups
            }
          }
        end
      end 
    end
  end
end

