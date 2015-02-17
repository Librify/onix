# coding: utf-8

module ONIX
  class ContentDate
    include ROXML

    xml_name "ContentDate"

    xml_accessor :content_date_role, :from => "ContentDateRole", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :date, :from => "Date", :to_xml => ONIX::Formatters.yyyymmdd) do |val|
      begin
        Date.parse(val)
      rescue
        nil
      end
    end

  end
end
