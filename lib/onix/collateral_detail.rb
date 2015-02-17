# coding: utf-8

module ONIX
  class CollateralDetail
    include ROXML

    xml_name "CollateralDetail"

    xml_accessor :text_content, :from => "TextContent", :as => [ONIX::TextContent]
    xml_accessor :cited_content, :from => "CitedContent", :as => [ONIX::CitedContent]
    xml_accessor :supporting_resource, :from => "SupportingResource", :as => [ONIX::SupportingResource]

    def initialize
      self.text_content = []
      self.cited_content = []
      self.supporting_resource = []
    end

  end
end
