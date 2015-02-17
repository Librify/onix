# coding: utf-8

module ONIX
  class RelatedProduct
    include ROXML

    xml_name "RelatedProduct"

    xml_accessor :product_relation_code, :from => "ProductRelationCode", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :product_identifier, :from => "ProductIdentifier", :as => [ONIX::ProductIdentifier]

    def initialize
      self.product_identifier = []
    end

  end
end
