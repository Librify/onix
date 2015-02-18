# coding: utf-8

module ONIX
  class MarketDate
    include ROXML

    xml_name "MarketDate"

    xml_accessor :market_date_role, :from => "MarketDateRole", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit

    xml_accessor(:date, :from => "Date", :to_xml => ONIX::Formatters.yyyymmdd) do |val|
      begin
        Date.parse(val)
      rescue
        nil
      end
    end

  end
end
