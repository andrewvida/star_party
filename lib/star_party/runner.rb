module StarParty
  class Runner
    def initialize(adapter, search_term)
      @adapter     = adapter
      @search_term = search_term
    end

    def search
      @adapter.visit_site
      @adapter.search_for(@search_term)
    end
  end
end
