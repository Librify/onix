# coding: utf-8

module ONIX
  class TitleDetail
    include ROXML

    xml_name "TitleDetail"

    xml_accessor :title_type, :from => "TitleType", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :title_elements, :from => "TitleElement", :as => [ONIX::TitleElement]

    def initialize
      self.title_elements = []
    end
  end
end
