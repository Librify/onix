# coding: utf-8

module ONIX
  class Territory
    include ROXML

    xml_name "Territory"

    xml_accessor :countries_included, :from => "CountriesIncluded"
    xml_accessor :regions_included, :from => "RegionsIncluded"
    xml_accessor :countries_excluded, :from => "CountriesExcluded"

  end
end