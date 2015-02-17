# coding: utf-8

module ONIX
  class Supplier
    include ROXML

    xml_name "Supplier"

    xml_accessor :supplier_role, :from => "SupplierRole", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :supplier_name, :from => "SupplierName"
    xml_accessor :telephone_number, :from => "TelephoneNumber", :as => Fixnum
    xml_accessor :supplier_identifier, :from => "SupplierIdentifier", :as => [ONIX::SupplierIdentifier]

    def initialize
      self.supplier_identifier = []
    end

  end
end
