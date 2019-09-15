# -*- encoding: utf-8 -*-
# stub: fog-exoscale 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "fog-exoscale".freeze
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nicolas Brechet".freeze]
  s.date = "2019-09-01"
  s.description = "Module for the 'fog' gem to support Exoscale".freeze
  s.email = ["nicolasbrechet@me.com".freeze]
  s.files = [".gitignore".freeze, ".hound.yml".freeze, ".rubocop.yml".freeze, ".rubocop_todo.yml".freeze, ".ruby-gemset".freeze, ".ruby-version".freeze, ".travis.yml".freeze, "CONTRIBUTING.md".freeze, "CONTRIBUTORS.md".freeze, "Gemfile".freeze, "LICENSE.md".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "examples/configuration.md".freeze, "examples/zones.md".freeze, "fog-exoscale.gemspec".freeze, "gemfiles/Gemfile.1.8.7".freeze, "gemfiles/Gemfile.1.9.2+".freeze, "lib/fog/exoscale.rb".freeze, "lib/fog/exoscale/compute.rb".freeze, "lib/fog/exoscale/core.rb".freeze, "lib/fog/exoscale/models/compute/address.rb".freeze, "lib/fog/exoscale/models/compute/flavor.rb".freeze, "lib/fog/exoscale/models/compute/flavors.rb".freeze, "lib/fog/exoscale/models/compute/image.rb".freeze, "lib/fog/exoscale/models/compute/images.rb".freeze, "lib/fog/exoscale/models/compute/job.rb".freeze, "lib/fog/exoscale/models/compute/jobs.rb".freeze, "lib/fog/exoscale/models/compute/security_group.rb".freeze, "lib/fog/exoscale/models/compute/security_group_rule.rb".freeze, "lib/fog/exoscale/models/compute/security_group_rules.rb".freeze, "lib/fog/exoscale/models/compute/security_groups.rb".freeze, "lib/fog/exoscale/models/compute/server.rb".freeze, "lib/fog/exoscale/models/compute/servers.rb".freeze, "lib/fog/exoscale/models/compute/zone.rb".freeze, "lib/fog/exoscale/models/compute/zones.rb".freeze, "lib/fog/exoscale/requests/compute/authorize_security_group_egress.rb".freeze, "lib/fog/exoscale/requests/compute/authorize_security_group_ingress.rb".freeze, "lib/fog/exoscale/requests/compute/change_service_for_virtual_machine.rb".freeze, "lib/fog/exoscale/requests/compute/create_security_group.rb".freeze, "lib/fog/exoscale/requests/compute/create_ssh_key_pair.rb".freeze, "lib/fog/exoscale/requests/compute/create_tags.rb".freeze, "lib/fog/exoscale/requests/compute/delete_security_group.rb".freeze, "lib/fog/exoscale/requests/compute/delete_ssh_key_pair.rb".freeze, "lib/fog/exoscale/requests/compute/delete_tags.rb".freeze, "lib/fog/exoscale/requests/compute/deploy_virtual_machine.rb".freeze, "lib/fog/exoscale/requests/compute/destroy_virtual_machine.rb".freeze, "lib/fog/exoscale/requests/compute/get_vm_password.rb".freeze, "lib/fog/exoscale/requests/compute/list_accounts.rb".freeze, "lib/fog/exoscale/requests/compute/list_async_jobs.rb".freeze, "lib/fog/exoscale/requests/compute/list_event_types.rb".freeze, "lib/fog/exoscale/requests/compute/list_events.rb".freeze, "lib/fog/exoscale/requests/compute/list_security_groups.rb".freeze, "lib/fog/exoscale/requests/compute/list_service_offerings.rb".freeze, "lib/fog/exoscale/requests/compute/list_ssh_key_pairs.rb".freeze, "lib/fog/exoscale/requests/compute/list_tags.rb".freeze, "lib/fog/exoscale/requests/compute/list_templates.rb".freeze, "lib/fog/exoscale/requests/compute/list_virtual_machines.rb".freeze, "lib/fog/exoscale/requests/compute/list_zones.rb".freeze, "lib/fog/exoscale/requests/compute/list_affinity_groups.rb".freeze, "lib/fog/exoscale/requests/compute/list_networks.rb".freeze, "lib/fog/exoscale/requests/compute/query_async_job_result.rb".freeze, "lib/fog/exoscale/requests/compute/reboot_virtual_machine.rb".freeze, "lib/fog/exoscale/requests/compute/register_ssh_key_pair.rb".freeze, "lib/fog/exoscale/requests/compute/reset_password_for_virtual_machine.rb".freeze, "lib/fog/exoscale/requests/compute/revoke_security_group_egress.rb".freeze, "lib/fog/exoscale/requests/compute/revoke_security_group_ingress.rb".freeze, "lib/fog/exoscale/requests/compute/start_virtual_machine.rb".freeze, "lib/fog/exoscale/requests/compute/stop_virtual_machine.rb".freeze, "lib/fog/exoscale/requests/compute/update_virtual_machine.rb".freeze, "lib/fog/exoscale/version.rb".freeze, "spec/exoscale_spec.rb".freeze, "spec/minitest_helper.rb".freeze, "spec/requests/zone_spec.rb".freeze, "spec/signed_params_spec.rb".freeze, "tests/exoscale/compute/models/security_group_rule_tests.rb".freeze, "tests/exoscale/compute/models/security_group_tests.rb".freeze, "tests/exoscale/compute/models/security_groups_tests.rb".freeze, "tests/exoscale/compute/models/server_tests.rb".freeze, "tests/exoscale/requests/security_group_tests.rb".freeze, "tests/exoscale/requests/service_offering_tests.rb".freeze, "tests/exoscale/requests/ssh_key_pair_tests.rb".freeze, "tests/exoscale/requests/template_tests.rb".freeze, "tests/exoscale/requests/virtual_machine_tests.rb".freeze]
  s.homepage = "https://github.com/fog/fog-exoscale".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Module for the 'fog' gem to support Exoscale".freeze
  s.test_files = ["spec/exoscale_spec.rb".freeze, "spec/minitest_helper.rb".freeze, "spec/requests/zone_spec.rb".freeze, "spec/signed_params_spec.rb".freeze]

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fog-core>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fog-json>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<fog-xml>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<shindo>.freeze, [">= 0"])
      s.add_development_dependency(%q<turn>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
    else
      s.add_dependency(%q<fog-core>.freeze, [">= 0"])
      s.add_dependency(%q<fog-json>.freeze, [">= 0"])
      s.add_dependency(%q<fog-xml>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<shindo>.freeze, [">= 0"])
      s.add_dependency(%q<turn>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<fog-core>.freeze, [">= 0"])
    s.add_dependency(%q<fog-json>.freeze, [">= 0"])
    s.add_dependency(%q<fog-xml>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<shindo>.freeze, [">= 0"])
    s.add_dependency(%q<turn>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
  end
end
