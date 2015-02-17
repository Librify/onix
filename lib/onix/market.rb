# coding: utf-8

module ONIX
  class Market
    include ROXML

    xml_name "Market"

    xml_accessor :territories, :from => "Territory", :as => [ONIX::Territory]

    def initialize
      self.territories = []
    end

  end
end
