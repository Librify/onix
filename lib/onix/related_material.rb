# coding: utf-8

module ONIX
  class RelatedMaterial
    include ROXML

    xml_name "RelatedMaterial"

    xml_accessor :related_work, :from => "RelatedWork", :as => [ONIX::RelatedWork]
    xml_accessor :related_product, :from => "RelatedProduct", :as => [ONIX::RelatedProduct]

    def initialize
      self.related_work = []
      self.related_product = []
    end

  end
end
