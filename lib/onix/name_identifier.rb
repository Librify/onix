# coding: utf-8

module ONIX
  class NameIdentifier
    include ROXML

    xml_name "NameIdentifier"

    xml_accessor :name_id_type, :from => "NameIDType", :as => Fixnum
    xml_accessor :id_type_name, :from => "IDTypeName"
    xml_accessor :id_value, :from => "IDValue", :as => Fixnum

  end
end
