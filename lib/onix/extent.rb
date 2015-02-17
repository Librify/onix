# coding: utf-8

module ONIX
  class Extent
    include ROXML

    xml_name "Extent"

    xml_accessor :extent_type,        :from => "ExtentType", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :extent_value,        :from => "ExtentValue", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :extent_unit,         :from => "ExtentUnit", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
  end
end
