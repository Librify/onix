# coding: utf-8

module ONIX
  class ResourceVersionFeature
    include ROXML

    xml_name "ResourceVersionFeature"

    xml_accessor :resource_version_feature_type, :from => "ResourceVersionFeatureType", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :feature_value, :from => "FeatureValue"

  end
end
