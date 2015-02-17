# coding: utf-8

module ONIX
  class SalesRights
    include ROXML

    xml_name "SalesRights"

    xml_accessor :sales_rights_type, :from =>"SalesRightsType", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :rights_country, :from =>"RightsCountry"
    xml_accessor :rights_territory, :from =>"RightsTerritory"
    xml_accessor :rights_region, :from =>"RightsRegion"

    # For ONIX 3.0
    xml_accessor :territories, :from => "Territory", :as => [ONIX::Territory]

    def initialize
      self.territories = []
    end
  end
end
