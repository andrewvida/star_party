require "star_party/version"
require "star_party/capybara_setup"
require "star_party/adapters"
require "star_party/runner"

module StarParty
  def self.search(adapter_name, search_item)
    adapter = if adapter_name.instance_of?(Class)
                adapter_name
              else
                Adapters.look_up(adapter_name)
              end
    Runner.new(adapter.new, search_item).search
  end
end
