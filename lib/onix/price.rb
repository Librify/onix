# coding: utf-8

module ONIX
  class Price
    include ROXML

    xml_name "Price"

    xml_accessor :price_type_code, :from => "PriceTypeCode", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :price_type_qualifier, :from => "PriceQualifier", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :price_type_description, :from => "PriceTypeDescription"
    xml_accessor :price_per, :from => "PricePer", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :minimum_order_qty, :from => "MinimumOrderQuantity", :as => Fixnum
    xml_accessor :class_of_trade, :from => "ClassOfTrade"
    xml_accessor :bic_discount_group_code, :from => "BICDiscountGroupCode"
    xml_accessor :discounts_coded, :from => "DiscountCoded", :as => [ONIX::DiscountCoded]
    xml_accessor :price_status, :from => "PriceStatus", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :price_amount, :from => "PriceAmount", :as => BigDecimal, :to_xml => ONIX::Formatters.decimal
    xml_accessor :currency_code, :from => "CurrencyCode"
    xml_accessor :price_effective_from, :from => "PriceEffectiveFrom"

    # For ONIX 3.0
    xml_accessor :tax, :from => "Tax", :as => [ONIX::Tax]
    xml_accessor :discounts, :from => "Discount", :as => [ONIX::Discount]
    xml_accessor :territories, :from => "Territory", :as => [ONIX::Territory]
    xml_accessor :printed_on_product, :from => "PrintedOnProduct", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :position_on_product, :from => "PositionOnProduct", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit

    def initialize
      self.discounts_coded = []
      self.tax = []
      self.discounts = []
      self.territories = []
    end
  end
end
