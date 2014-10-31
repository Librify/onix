# coding: utf-8

module ONIX
  class ProductClassification
    include ROXML

    xml_name "ProductClassification"

    xml_accessor :product_classification_type, :from => "ProductClassificationType", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :product_classification_code, :from => "ProductClassificationCode"
  end
end
