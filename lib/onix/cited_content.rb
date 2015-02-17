# coding: utf-8

module ONIX
  class CitedContent
    include ROXML

    xml_name "CitedContent"

    xml_accessor :cited_content_type, :from => "CitedContentType", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :content_audience, :from => "ContentAudience", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :source_type, :from => "SourceType", :as => Fixnum, :to_xml => ONIX::Formatters.two_digit
    xml_accessor :source_title, :from => "SourceTitle"
    xml_accessor :citation_note, :from => "CitationNote"
    xml_accessor :resource_link, :from => "ResourceLink"
    xml_accessor :content_date, :from => "ContentDate", :as => [ONIX::ContentDate]

    def initialize
      self.content_date = []
    end
  end
end
