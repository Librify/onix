# coding: utf-8

module ONIX
  class WorkIdentifier
    include ROXML

    xml_name "WorkIdentifier"

    xml_accessor :work_id_type, :from => "WorkIDType", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :id_value, :from => "IDValue"
  end
end
