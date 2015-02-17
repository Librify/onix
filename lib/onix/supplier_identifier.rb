# coding: utf-8

module ONIX
  class SupplierIdentifier
    include ROXML

    xml_name "SupplierIdentifier"

    xml_accessor :supplier_id_type, :from => "SupplierIDType", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :id_value, :from => "IDValue"

  end
end
