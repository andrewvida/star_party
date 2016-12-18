module StarParty
  module Adapters
    class Macys
      include Capybara::DSL

      def visit_site
        visit("https://www.macys.com")
      end

      def search_for(web_id)
       fill_in "globalSearchInputField", with: web_id
       click_button "subnavSearchSubmit"

       get_price
      end

      private

      def get_price
        price_element = find('.priceSale') || find('.singlePrice')
        parse_currency(price_element.text)
      end

      def parse_currency(price)
        price.match(/\$(.*)$/)[1].to_f
      end
    end
  end
end
