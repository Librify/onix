# coding: utf-8

module ONIX
  class SupportingResource
    include ROXML

    xml_name "SupportingResource"

    xml_accessor :resource_content_type, :from => "ResourceContentType", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :content_audience, :from => "ContentAudience", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :resource_mode, :from => "ResourceMode", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :resource_version, :from => "ResourceVersion", :as => [ONIX::ResourceVersion]

    def initialize
      self.resource_version = []
    end
  end
end
