# coding: utf-8

module ONIX
  class ResourceVersion
    include ROXML

    xml_name "ResourceVersion"

    xml_accessor :resource_form, :from => "ResourceForm", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :resource_version_feature, :from => "ResourceVersionFeature", :as => [ONIX::ResourceVersion]
    xml_accessor :resource_link, :from => "ResourceLink"
    xml_accessor :content_date, :from => "ContentDate", :as => [ONIX::ContentDate]

    def initialize
      self.resource_version_feature = []
      self.content_date = []
    end

  end
end
