# coding: utf-8

module ONIX
  class ProductSupply
    include ROXML

    xml_name "ProductSupply"

    xml_accessor :markets, :from => "Market", :as => [ONIX::Market]
    xml_accessor :market_publishing_details, :from => "MarketPublishingDetail", :as => [ONIX::MarketPublishingDetail]
    xml_accessor :supply_details, :from => "SupplyDetail", :as => [ONIX::SupplyDetail]

    def initialize
      self.markets = []
      self.market_publishing_details = []
      self.supply_details = []
    end

  end
end
