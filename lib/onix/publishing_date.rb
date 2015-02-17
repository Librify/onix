# coding: utf-8

module ONIX
  class PublishingDate
    include ROXML

    xml_name "PublishingDate"

    xml_accessor :publishing_date_role, :from => "PublishingDateRole", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :date, :from => "Date", :to_xml => ONIX::Formatters.yyyymmdd) do |val|
      begin
        Date.parse(val)
      rescue
        nil
      end
    end

  end
end
