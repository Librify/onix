# coding: utf-8

module ONIX
  class Tax
    include ROXML

    xml_name "Tax"

    xml_accessor :tax_type, :from => "TaxType", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :tax_rate_code, :from => "TaxRateCode"
    xml_accessor :TaxRatePercent, :from => "TaxRatePercent", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :TaxableAmount, :from => "TaxableAmount", :as => BigDecimal, :to_xml => ONIX::Formatters.decimal
    xml_accessor :TaxAmount, :from => "TaxAmount", :as => BigDecimal, :to_xml => ONIX::Formatters.decimal

  end
end
