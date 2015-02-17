# coding: utf-8

module ONIX
  class ReturnsConditions
    include ROXML

    xml_name "ReturnsConditions"

    xml_accessor :returns_code_type, :from => "ReturnsCodeType", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :returns_code, :from => "ReturnsCode"

  end
end
