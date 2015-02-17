# coding: utf-8

module ONIX
  class Collection
    include ROXML

    xml_name "Collection"

    xml_accessor :collection_type, :from => "CollectionType"
    xml_accessor :title_details, :from => "TitleDetail", :as => [ONIX::TitleDetail]

    def initialize
      self.title_details = []
    end

  end
end
