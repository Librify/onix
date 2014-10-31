# coding: utf-8

module ONIX
  class NotForSale
    include ROXML

    xml_name "NotForSale"

    xml_accessor :rights_country, :from =>"RightsCountry"
    xml_accessor :rights_territory, :from =>"RightsTerritory"
  end
end
