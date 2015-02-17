# coding: utf-8

module ONIX
  class PublishingDetail
    include ROXML

    xml_name "PublishingDetail"

    xml_accessor :imprints, :from => "Imprint", :as => [ONIX::Imprint]
    xml_accessor :publisheres, :from => "Publisher", :as => [ONIX::Publisher]
    xml_accessor :city_of_publication, :from => "CityOfPublication"
    xml_accessor :country_of_publication, :from => "CountryOfPublication"
    xml_accessor :publishing_status, :from => "PublishingStatus", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :publishing_date, :from => "PublishingDate", :as => [ONIX::PublishingDate]
    xml_accessor :sales_rights, :from => "SalesRights", :as => [ONIX::SalesRights]
    xml_accessor :row_sales_rights_type, :from => "ROWSalesRightsType", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit

    def initialize
      self.imprints = []
      self.publisheres = []
      self.publishing_date = []
      self.sales_rights = []
    end

  end
end
