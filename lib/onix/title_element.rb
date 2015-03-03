# coding: utf-8

module ONIX
  class TitleElement
    include ROXML

    xml_name "TitleElement"

    xml_accessor :sequence_number, :from => "SequenceNumber", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :title_element_level, :from => "TitleElementLevel", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :title_without_prefix, :from => "TitleWithoutPrefix"

  end
end