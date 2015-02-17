# coding: utf-8

module ONIX
  class Discount
    include ROXML

    xml_name "Discount"

    xml_accessor :discount_percent, :from => "DiscountPercent", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit

  end
end
